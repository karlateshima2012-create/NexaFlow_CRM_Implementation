# Projeto 3 — Revenue Reporting & Operations Analytics

**Status:** QA final concluído em 06/10/2026; Aulas 32–37 e Checkpoints CP19–CP22 encerrados, com limites registrados.

Terceira etapa do case NexaFlow: transformar dados sintéticos e regras operacionais em análises explicáveis para funil e acompanhamento de Deals.

## Fonte de verdade e resultado

A população analítica é exatamente **5 Deals SIM-**, presentes no CSV fonte validado e na tabela SQLite `deals_raw`. Os cinco Record IDs reconciliam entre CSV, SQLite, consultas SQL e resultados. Os dashboards HubSpot usam os mesmos cinco Deals e a distribuição coincide com QRY-002.

| Deal Stage | Contagem |
|---|---:|
| Appointment Scheduled | 1 |
| Qualified To Buy | 1 |
| Closed Won | 1 |
| Closed Lost | 2 |
| **Total** | **5** |

- **QRY-003:** 2 Deals abertos sem Next Activity Date informado; isso não prova ausência de tarefa.
- **QRY-004:** 2 Closed Lost; um sem motivo bruto preenchido e um com motivo preenchido.
- **QRY-005/006:** não executadas, pois faltam export de Interactions e histórico de handoff com timestamps.

## Implementação e evidências

A Aula 37 realizou lote controlado **CSV → SQLite**, com inserção, reprocessamento idempotente, atualização isolada em cópia de fixture, rejeição de chave ausente e reconciliação 5/5. **Sem API, sincronização contínua ou escrita no HubSpot.**

- [Consulta SQL do funil](./sql/03_NexaFlow_Funnel_SQL_v1.0.sql)
- [Relatório final de QA](./evidence/08_NexaFlow_Revenue_Reporting_Analytics_Report_v1.0.docx)
- [Reconciliação da integração](./evidence/07_NexaFlow_Integration_Test_Reconciliation_v1.0.xlsx)
- [Resultados SQL](./evidence/04_NexaFlow_SQL_Results_v1.0.xlsx)
- [Dashboard executivo — captura real](./evidence/06_NexaFlow_Executive_Dashboard_Evidence_v1.0.jpg)
- [Dashboard operacional — captura real](./evidence/05_NexaFlow_Operational_Deals_Dashboard_Evidence_v1.0.jpg)
- [Resumo do QA](./evidence/QA_Audit_Summary.txt)

### Dashboard executivo

![Dashboard executivo HubSpot com a distribuição da coorte de 5 Deals](./evidence/06_NexaFlow_Executive_Dashboard_Evidence_v1.0.jpg)

### Dashboard operacional

![Dashboard operacional HubSpot com Deals abertos sem Next Activity Date informado](./evidence/05_NexaFlow_Operational_Deals_Dashboard_Evidence_v1.0.jpg)

## Limites de interpretação

Os dados são fixtures sintéticas e os resultados representam apenas a coorte declarada, não o desempenho de negócio real. `Amount` é um campo do Deal; não comprova pagamento nem receita reconhecida. Next Activity Date vazio não prova inexistência de atividade.

## Competências demonstradas

Definição e governança de métricas · HubSpot reporting · SQL de funil · análise de qualidade · reconciliação de dados · lote CSV para SQLite · comunicação executiva de resultados e limitações.

[← Voltar ao case principal](../README.md)
