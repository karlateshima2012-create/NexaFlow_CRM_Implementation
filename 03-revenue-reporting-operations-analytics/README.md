# NexaFlow — CRM do dado à decisão
## Projeto 3 · Relatórios e análise de receita

**Concluído em 06/10/2026:** QA final encerrado, com resultados e limites registrados.

## Problema

As regras comerciais precisavam se transformar em análises que pudessem ser conferidas entre si. O desafio era definir uma população estável, alinhar resultados e painéis e identificar sinais operacionais sem extrapolar o significado dos campos.

## Minha contribuição

Participei da revisão das métricas e do escopo analítico, da conferência dos resultados e painéis e da validação das evidências de reconciliação. Organizei a apresentação dos achados e dos limites, com apoio de IA nas consultas, análise, implementação técnica, documentação e QA.

## Trabalho realizado

- Definição da amostra analítica e conferência do mapeamento das colunas.
- Consultas SQL de distribuição do funil e qualidade dos registros.
- Construção de visões operacional e executiva no HubSpot.
- Teste controlado de lote CSV → SQLite: inserção, reprocessamento idempotente, atualização em cópia de fixture e rejeição de chave ausente.
- Reconciliação dos cinco registros entre fonte, banco, consultas, resultados e dashboards.

## Resultados

A análise e os dashboards usam os mesmos **5 Deals sintéticos**.

| Deal Stage | Contagem |
|---|---:|
| Appointment Scheduled | 1 |
| Qualified To Buy | 1 |
| Closed Won | 1 |
| Closed Lost | 2 |
| **Total** | **5** |

- **QRY-003:** 2 Deals abertos sem Next Activity Date informado; nenhum deles sem owner.
- **QRY-004:** 2 Closed Lost; um sem motivo bruto preenchido e outro com motivo preenchido.
- **Reconciliação:** os cinco Record IDs conferem entre CSV, SQLite e resultados; a distribuição do dashboard coincide com QRY-002.

As consultas QRY-005/006 não foram executadas: faltam export de Interactions e histórico de handoff com timestamps. Não foram estimados resultados para essas análises.

## Evidências

### Visão executiva

![Dashboard executivo com a distribuição dos cinco Deals](./evidence/06_NexaFlow_Executive_Dashboard_Evidence_v1.0.jpg)

Captura do dashboard HubSpot usado para conferir a distribuição por estágio.

### Acompanhamento operacional

![Dashboard operacional com Deals abertos sem Next Activity Date informado](./evidence/05_NexaFlow_Operational_Deals_Dashboard_Evidence_v1.0.jpg)

Captura do dashboard HubSpot usado para acompanhar campos operacionais. Next Activity Date vazio não prova inexistência de tarefa ou atividade.

- [Relatório final: análise, QA e limites](./evidence/08_NexaFlow_Revenue_Reporting_Analytics_Report_v1.0.docx)
- [Resultados SQL](./evidence/04_NexaFlow_SQL_Results_v1.0.xlsx)
- [Reconciliação do lote controlado](./evidence/07_NexaFlow_Integration_Test_Reconciliation_v1.0.xlsx)
- [Consultas SQL](./sql/03_NexaFlow_Funnel_SQL_v1.0.sql)
- [Resumo do QA](./evidence/QA_Audit_Summary.txt)

## Aprendizados e competências

A entrega demonstra definição de métricas, análise de funil, SQL, reporting no HubSpot, reconciliação e comunicação de resultados. O principal aprendizado foi manter o mesmo escopo em todas as análises e interpretar campos ausentes e valores comerciais com cuidado.

A integração foi um lote controlado CSV → SQLite, sem API, sincronização contínua ou escrita de volta no HubSpot. O repositório publica consultas e resultados selecionados; sem as bases e o esquema, o SQL não constitui um pacote de execução autônomo.

Os dados são sintéticos e não representam desempenho empresarial real. Amount não comprova pagamento nem receita reconhecida.

[← Etapa anterior: operação e automações](../02-lifecycle-pipeline-automation/) · [Apresentação do case](../README.md)
