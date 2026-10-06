-- NexaFlow | Revenue Reporting & Operations Analytics
-- População de referência: os cinco Record IDs listados no CSV da pasta raw.
-- Fonte única: hubspot_deals_SIM_full_20261005.csv; tabela deals_raw carregada desse CSV.
-- As consultas abaixo usam a lista explícita de cinco IDs para manter a coorte estável.
-- Dados sintéticos de treinamento. O resultado não representa o universo do portal.

-- QRY-001 | Distribuição atual de Contacts por Lifecycle Stage e Lead Status.
-- Fotografia atual; não comprova conversão de um registro para outro.
SELECT "Lifecycle Stage" AS lifecycle_stage,
       "Lead Status" AS lead_status,
       COUNT(*) AS contact_count
FROM contacts_raw
GROUP BY "Lifecycle Stage", "Lead Status"
ORDER BY lifecycle_stage, lead_status;

-- QRY-002 | Distribuição dos cinco Deals da coorte por estágio atual e owner.
WITH deal_cohort AS (
    SELECT * FROM deals_raw
    WHERE "Record ID" IN ('351474043636','351700140761','351700811479','351700857588','351935641322')
)
SELECT "Deal Stage" AS deal_stage,
       "Deal owner" AS deal_owner,
       COUNT(*) AS deal_count
FROM deal_cohort
GROUP BY "Deal Stage", "Deal owner"
ORDER BY deal_stage, deal_owner;

-- QRY-003 | Deals abertos com campos de owner ou próxima data de atividade ausentes.
-- Campo vazio em Next Activity Date não comprova ausência de tarefa/atividade.
WITH deal_cohort AS (
    SELECT * FROM deals_raw
    WHERE "Record ID" IN ('351474043636','351700140761','351700811479','351700857588','351935641322')
)
SELECT "Deal Name" AS deal_name,
       "Deal Stage" AS deal_stage,
       "Deal owner" AS deal_owner,
       "Next Activity Date" AS next_activity_date,
       CASE WHEN TRIM(COALESCE("Deal owner", '')) = '' THEN 1 ELSE 0 END AS missing_owner,
       CASE WHEN TRIM(COALESCE("Next Activity Date", '')) = '' THEN 1 ELSE 0 END AS missing_next_activity_date
FROM deal_cohort
WHERE "Deal Stage" NOT IN ('Closed Won', 'Closed Lost')
ORDER BY "Deal Stage", "Deal Name";

-- QRY-004 | Closed Lost agrupados pelo motivo bruto exportado.
-- Categorias permanecem literais; não normalizar sem regra documentada.
WITH deal_cohort AS (
    SELECT * FROM deals_raw
    WHERE "Record ID" IN ('351474043636','351700140761','351700811479','351700857588','351935641322')
)
SELECT "Closed Lost Reason" AS closed_lost_reason,
       COUNT(*) AS deal_count
FROM deal_cohort
WHERE "Deal Stage" = 'Closed Lost'
GROUP BY "Closed Lost Reason"
ORDER BY deal_count DESC, closed_lost_reason;

-- QRY-005 | Não executada: o staging não contém tabela ou export de Interactions.
-- Requisito: ID, tipo, owner/autor, data, outcome e associação.

-- QRY-006 | Não executada: o staging não contém histórico de eventos/timestamps de handoff.
-- Não estimar SLA a partir do estado atual ou de datas sem semântica confirmada.
