# Projeto 3 · Relatórios e Análise de Receita

**Status:** Concluído em 06/10/2026  
Análise, dashboards e reconciliação finalizados com limites documentados.

---

## Problema

As regras comerciais precisavam se transformar em análises confiáveis.

O desafio era definir uma população estável, garantir que os números batessem entre si e interpretar os campos com o devido rigor (sem extrapolar significados).

---

## O que foi feito

- Definição de uma amostra analítica controlada
- Consultas SQL de distribuição do funil e qualidade dos registros
- Construção de visões operacional e executiva no HubSpot
- Teste controlado de carga CSV → SQLite (inserção, reprocessamento e rejeição)
- Reconciliação completa dos registros entre fonte, banco, consultas e dashboards

---

## Resultados

A análise e os dashboards utilizam a **mesma amostra de 5 Deals sintéticos**:

| Deal Stage | Quantidade |
|------------|------------|
| Appointment Scheduled | 1 |
| Qualified To Buy | 1 |
| Closed Won | 1 |
| Closed Lost | 2 |
| **Total** | **5** |

**Principais achados:**

- 2 Deals abertos sem Next Activity Date preenchida (nenhum sem owner)
- 2 Closed Lost (1 com motivo preenchido e 1 sem)
- Reconciliação dos 5 de 5 Record IDs entre CSV, SQLite e resultados; distribuição por estágio alinhada ao dashboard

> As consultas QRY-005 e QRY-006 **não foram executadas** por falta de dados de Interactions e histórico de handoff com timestamps.

---

## Escopo e decisões metodológicas

A validação utilizou uma amostra controlada de **cinco negócios sintéticos**, reconciliada entre fonte, SQL e dashboards. Esse escopo demonstra consistência dos resultados e controles operacionais; não permite generalizar desempenho comercial nem comprova processamento em escala.

- **População fixa:** conferência dos cinco Record IDs entre CSV e SQLite; inclusão explícita dos mesmos cinco negócios nos relatórios do HubSpot.
- **Comparação equivalente:** distribuição por estágio conferida com QRY-002; pendências operacionais interpretadas com QRY-003.
- **Sem extrapolação:** a distribuição atual não foi tratada como taxa de conversão do funil. Sem histórico de estágios e timestamps, não foi calculado tempo médio em estágio.
- **Integração delimitada:** lote CSV → SQLite, sem API, sincronização contínua ou escrita de volta no HubSpot.

---

## Evidências

**Visão executiva**

![Painel executivo](./evidence/06_NexaFlow_Executive_Dashboard_Evidence_v1.0.jpg)

Distribuição atual dos cinco negócios: dois abertos, um ganho e dois perdidos. A captura confere o recorte de QRY-002; não mostra evolução temporal nem taxa de conversão.

**Acompanhamento operacional**

![Painel operacional](./evidence/05_NexaFlow_Operational_Deals_Dashboard_Evidence_v1.0.jpg)

Dois negócios abertos sem Next Activity Date preenchida, ambos com owner. O sinal orienta a conferência da timeline; campo vazio não comprova ausência de tarefa ou atividade.

- [Relatório final de análise e QA](./evidence/08_NexaFlow_Revenue_Reporting_Analytics_Report_v1.0.docx)
- [Resultados das consultas SQL](./evidence/04_NexaFlow_SQL_Results_v1.0.xlsx)
- [Reconciliação do lote controlado](./evidence/07_NexaFlow_Integration_Test_Reconciliation_v1.0.xlsx)
- [Consultas SQL](./sql/03_NexaFlow_Funnel_SQL_v1.0.sql)

---

## Principais aprendizados

- Manter o **mesmo escopo** em todas as análises e visualizações
- Campo vazio não prova ausência de atividade
- Valor do negócio (Amount) não comprova pagamento nem receita reconhecida
- Reconciliar sempre a fonte com o resultado final

---

**Ferramentas utilizadas:** HubSpot · SQL · SQLite · Excel.

[← Etapa anterior: Operação e Automações](../02-lifecycle-pipeline-automation/) · [Voltar para a apresentação do case](../README.md)
