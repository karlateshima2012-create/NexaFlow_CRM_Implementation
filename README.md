# HubSpot CRM Implementation — B2B SaaS Simulation

**Portfólio técnico de CRM Operations e Revenue Operations** desenvolvido por Karla Teshima como um case independente de treinamento. Uma empresa B2B SaaS simulada, três projetos conectados e evidências reais de execução em ambiente de treinamento.

[LinkedIn](https://www.linkedin.com/in/karla-teshima-revops) · [Repositório](https://github.com/karlateshima2012-create/Creative-Print-RevOps-Lab)

## Resumo do case

A NexaFlow representa uma empresa brasileira B2B SaaS com dados dispersos, critérios operacionais pouco consistentes e baixa visibilidade de funil. O trabalho constrói uma sequência rastreável no HubSpot: arquitetura e migração, operação comercial e automação, reporting e analytics.

| Etapa | Trabalho demonstrado | Estado e escopo |
|---|---|---|
| [01 — CRM Architecture & Data Migration](./01-crm-architecture-data-migration/) | Discovery, auditoria de 14 fontes, modelo de dados, governança, ETL, Data Quality e piloto de importação | Concluído no escopo de pacote de migração preparado + piloto real representativo; sem migração integral |
| [02 — Lifecycle, Pipeline & Automation](./02-lifecycle-pipeline-automation/) | Lifecycle, qualificação, pipeline, ownership, SLA, workflows, handoffs e testes | Concluído no escopo de treinamento, com desvios e limites documentados |
| [03 — Revenue Reporting & Operations Analytics](./03-revenue-reporting-operations-analytics/) | KPIs, SQL de funil, dashboards, QA e lote controlado CSV → SQLite | QA final concluído; análise alinhada a uma coorte explícita de **5 Deals** |

## Evidências em destaque

- **Projeto 1:** 341 registros consolidados, 177 elegíveis e 164 em exceções/pendências rastreáveis; piloto de 9 registros HubSpot, incluindo 2 Contacts criados no cenário da nota. O piloto não equivale a 9 linhas de origem nem a carga integral.
- **Projeto 2:** matriz de rastreabilidade, testes operacionais e workflows testados no portal de treinamento; pagamento simulado e handoff de onboarding manual.
- **Projeto 3:** 5 Deals no CSV, SQLite, SQL, resultados e dashboards; distribuição de estágios: Appointment Scheduled 1, Qualified To Buy 1, Closed Won 1, Closed Lost 2.

Os detalhes e evidências estão nos READMEs de cada projeto. Para o Projeto 3, veja também a [consulta SQL](./03-revenue-reporting-operations-analytics/sql/03_NexaFlow_Funnel_SQL_v1.0.sql), o [relatório final](./03-revenue-reporting-operations-analytics/evidence/08_NexaFlow_Revenue_Reporting_Analytics_Report_v1.0.docx) e a [captura real do dashboard executivo](./03-revenue-reporting-operations-analytics/evidence/06_NexaFlow_Executive_Dashboard_Evidence_v1.0.jpg).

## Limites de interpretação

- NexaFlow e os dados de CRM são simulados; os dados analíticos são **fixtures sintéticas**.
- O Projeto 1 descreve universo de migração preparado e piloto. Seu número de Deals elegíveis pertence a esse escopo de migração e **não** é a população analítica do Projeto 3.
- A população analítica do Projeto 3 é exatamente **5 Deals**; Amount de Deal não comprova pagamento nem receita reconhecida.
- A integração da Aula 37 foi um lote controlado **CSV → SQLite**, sem API, sincronização contínua ou escrita de volta no HubSpot.
- Cenários financeiros/handoffs do Projeto 2 são simulados e manuais quando indicado; não representam transações ou automações de produção.
- Não há vídeo. A apresentação usa documentos e capturas reais selecionadas.

## Competências demonstradas

CRM data architecture · HubSpot configuration and reporting · data quality and migration planning · lifecycle and pipeline operations · workflow testing · SQL funnel analysis · controlled CSV-to-SQLite reconciliation · operational documentation and QA.

## English summary

An independent portfolio case documenting a HubSpot CRM implementation for a simulated Brazilian B2B SaaS company. Three connected projects cover CRM architecture and a representative migration pilot, lifecycle and pipeline operations with tested workflows, and revenue reporting analytics. The Project 3 analytical cohort contains exactly five synthetic Deals. Its integration was a controlled manual CSV-to-SQLite batch, with no API or continuous sync. Deal Amount is not proof of payment or recognized revenue.
