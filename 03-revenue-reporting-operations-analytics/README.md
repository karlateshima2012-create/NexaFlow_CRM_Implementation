# Projeto 3 — Revenue Reporting & Operations Analytics

**Status:** QA final concluído em 06/10/2026; Aulas 32–37 e Checkpoints CP19–CP22 encerrados com desvios registrados.

Terceira etapa do case NexaFlow: transformar dados sintéticos e regras operacionais em análises explicáveis para funil e acompanhamento de Deals.

## Fonte de verdade e resultado

A população analítica declarada é exatamente **5 Deals SIM-** no CSV fonte e na tabela SQLite `deals_raw`. Os cinco Record IDs e valores reconciliam entre CSV, SQLite, consultas SQL e resultados. Os relatórios HubSpot foram filtrados explicitamente para os cinco nomes da coorte; a distribuição por estágio coincide com QRY-002.

| Deal Stage | Contagem |
|---|---:|
| Appointment Scheduled | 1 |
| Qualified To Buy | 1 |
| Closed Won | 1 |
| Closed Lost | 2 |
| **Total** | **5** |

- QRY-003: 2 Deals abertos sem Next Activity Date informado; isso não prova ausência de tarefa.
- QRY-004: 2 Closed Lost; um sem motivo bruto preenchido e um com motivo preenchido.
- QRY-005 e QRY-006 não foram executadas, pois o pacote não tem export de Interactions nem histórico de handoff com timestamps.

## Implementação e evidências

A Aula 37 realizou lote controlado **CSV → SQLite**, com inserção, reprocessamento idempotente, atualização isolada em cópia de fixture, rejeição de chave ausente e reconciliação 5/5. **Sem API, sincronização contínua ou escrita no HubSpot.**

- [Consulta SQL do funil](./sql/03_NexaFlow_Funnel_SQL_v1.0.sql)
- [Relatório final de QA](./evidence/08_NexaFlow_Revenue_Reporting_Analytics_Report_v1.0.docx)
- [Reconciliação da integração](./evidence/07_NexaFlow_Integration_Test_Reconciliation_v1.0.xlsx)
- [Resultados SQL](./evidence/04_NexaFlow_SQL_Results_v1.0.xlsx)
- [Dashboard executivo — captura real](./evidence/06_NexaFlow_Executive_Dashboard_Evidence_v1.0.jpg)
- [Resumo do QA](./evidence/QA_Audit_Summary.txt)

![Dashboard executivo HubSpot com distribuição da coorte de 5 Deals](./evidence/06_NexaFlow_Executive_Dashboard_Evidence_v1.0.jpg)

## Limites de interpretação

Dados são fixtures sintéticas. Amount de Deal não comprova pagamento nem receita reconhecida. Campo Next Activity Date vazio não prova inexistência de atividade. Resultados representam apenas esta coorte declarada e não desempenho real de negócio.

## Competências demonstradas

Definição de métricas · HubSpot reporting · SQL de funil · análise de qualidade · reconciliação de dados · lote CSV para SQLite · comunicação executiva de resultados e limitações.

[← Voltar ao case principal](../README.md)
