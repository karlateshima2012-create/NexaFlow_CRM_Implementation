# Projeto 1 — CRM Architecture & Data Migration

**Status:** concluído em 21/09/2026 no escopo aprovado de pacote Import Ready + piloto real representativo. **Não houve migração integral.**

Primeira etapa do case **HubSpot CRM Implementation — B2B SaaS Simulation**. Os dados e a empresa são fictícios; o piloto foi executado em portal HubSpot Developer de treinamento.

## Problema e decisão

Quatorze fontes legadas continham duplicidades, formatos e regras inconsistentes, associações frágeis e pouca rastreabilidade. O trabalho definiu uma arquitetura e um mapping por objeto/campo antes da transformação, preservou exceções e usou um piloto pequeno para testar o fluxo disponível no portal.

## Execução e resultado

- Inventário e auditoria de 14 fontes; modelo de objetos, relacionamentos, propriedades e governança.
- Mapping origem → destino, ordem de carga e regras de identidade; ETL rastreável com Power Query e validações SQL.
- 341 registros consolidados: 177 elegíveis e 164 em exceções/pendências rastreáveis. O pacote de migração do Projeto 1 tem seu próprio universo operacional; ele não é a coorte analítica do Projeto 3, que foi definida separadamente com 5 Deals. No Import Ready do Projeto 1, o objeto Deal contém 15 registros elegíveis; esse número descreve o escopo maior da migração, não a amostra analítica de 5 Deals SIM- do Projeto 3.
- Piloto no HubSpot: 9 registros criados em oito tipos de dataset, incluindo 2 Contacts no cenário de uma nota; isso não significa 9 linhas únicas de origem.
- As associações financeiras em lote por API, a carga dos 177 elegíveis e o rollback transacional não foram demonstrados.

## Evidências selecionadas

- [Relatório final de migração](./evidence/15_NexaFlow_Data_Migration_Report_v1.0.docx)
- [Modelo de dados e governança](./evidence/08_Data_Model_and_Governance_NexaFlow.xlsx)
- [Mapping de migração](./evidence/12_NexaFlow_Migration_Mapping_v1.0.xlsx)

O relatório explica contagens, casos do piloto, associações comprovadas, desvios e limites. Os arquivos completos de origem e os datasets Import Ready não são publicados neste portfólio.

## Competências demonstradas

Discovery e requisitos · data modeling · CRM data governance · source-to-target mapping · ETL/Power Query · SQL para qualidade · importação piloto · reconciliação e documentação de exceções.

[← Voltar ao case principal](../README.md)
