# NexaFlow | CRM do dado à decisão

### Uma jornada de organização comercial, operação e visibilidade do funil

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Karla%20Teshima-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/karla-teshima-revops)
[![Apresentação](https://img.shields.io/badge/Apresentação-PDF-FF7A59?style=for-the-badge)](./assets/NexaFlow_Apresentacao_de_Projeto_Portfolio.pdf)
![Case concluído](https://img.shields.io/badge/Case-3%20etapas%20concluídas-0F766E?style=for-the-badge)
![CRM](https://img.shields.io/badge/CRM-HubSpot-FF7A59?style=for-the-badge&logo=hubspot&logoColor=white)

![Jornada NexaFlow](./assets/nexaflow-journey.svg)

---

## O desafio

A **NexaFlow** é uma empresa B2B SaaS fictícia com um problema clássico de operação comercial:

- Informações espalhadas em múltiplas fontes
- Regras de passagem entre equipes inconsistentes
- Baixa visibilidade do funil para a liderança

O objetivo do case foi estruturar o caminho completo: **do diagnóstico dos dados até a tomada de decisão baseada em evidências**.

---

## O que foi entregue

| Etapa | Escopo | Principais resultados |
|-------|--------|----------------------|
| **[01 — Arquitetura e migração de CRM](./01-crm-architecture-data-migration/)** | Levantamento de fontes, regras de elegibilidade, preparação de dados e piloto de importação no HubSpot | 14 fontes avaliadas · 341 registros consolidados · 177 elegíveis · 164 em exceção · Piloto com 9 registros criados no HubSpot |
| **[02 — Operação comercial e automações](./02-lifecycle-pipeline-automation/)** | Desenho de lifecycle, pipeline, ownership, SLAs, alertas e handoff para onboarding | 8 transições mapeadas · Workflows testados · Desvios e procedimentos manuais documentados |
| **[03 — Relatórios e análise de receita](./03-revenue-reporting-operations-analytics/)** | Visão operacional + executiva, consultas SQL e reconciliação de dados | Análise e dashboards alinhados a uma amostra controlada de 5 negócios · Reconciliação completa entre fonte, SQL e HubSpot |

---

## Evidências dos painéis

**Visão executiva** — distribuição dos 5 negócios por estágio

![Painel executivo](./03-revenue-reporting-operations-analytics/evidence/06_NexaFlow_Executive_Dashboard_Evidence_v1.0.jpg)

**Acompanhamento operacional** — negócios abertos sem data de próxima atividade

![Painel operacional](./03-revenue-reporting-operations-analytics/evidence/05_NexaFlow_Operational_Deals_Dashboard_Evidence_v1.0.jpg)

---

## Principais aprendizados e diferenciais

- Separação clara entre **dados preparados**, **exceções** e **o que foi realmente executado**
- Processos comerciais testados com documentação honesta de limites e comportamentos reais
- Painéis construídos sobre uma **população definida e reconciliada** (evitando comparações inválidas)
- Leitura criteriosa de dados: campo vazio ≠ ausência de atividade · valor do negócio ≠ receita reconhecida
- Comunicação transparente de escopo e limitações

---

## Competências demonstradas

`Data Quality` · `CRM Architecture` · `HubSpot` · `Sales Operations` · `Revenue Operations` · `Process Design` · `Workflow Automation` · `SQL` · `Reporting` · `Data Reconciliation` · `Stakeholder Communication`

---

## Estrutura do repositório

```text
├── 01-crm-architecture-data-migration/        → Diagnóstico, mapeamento e piloto de migração
├── 02-lifecycle-pipeline-automation/         → Regras operacionais, ownership e automações
├── 03-revenue-reporting-operations-analytics/ → Análise de funil, SQL e dashboards
└── assets/                                  → Apresentação e materiais visuais
```

Cada pasta contém seu próprio README com decisões, evidências e limitações detalhadas.

## Sobre os dados

A NexaFlow e todos os registros utilizados são fictícios e sintéticos. Os números servem exclusivamente para demonstrar o trabalho realizado neste case e não representam resultados de uma empresa real. O campo de valor dos negócios não foi tratado como prova de receita.

---

**Karla Teshima**  
[LinkedIn](https://www.linkedin.com/in/karla-teshima-revops) · Revenue Operations
