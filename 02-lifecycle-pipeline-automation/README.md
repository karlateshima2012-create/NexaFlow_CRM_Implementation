# NexaFlow — CRM do dado à decisão
## Projeto 2 · Operação comercial e automações

**Concluído em 02/10/2026:** regras operacionais e testes consolidados, com desvios documentados.

## Problema

A passagem de leads entre Marketing, SDR e Vendas precisava de critérios claros, responsáveis e prazos. O acompanhamento dos negócios também exigia controles de próxima ação e regras de encerramento e onboarding.

## Minha contribuição

Participei da definição e revisão das regras comerciais, do acompanhamento dos cenários de configuração e teste e da validação dos comportamentos observados. Organizei resultados e desvios para distinguir regras especificadas, automações executadas e procedimentos manuais, com apoio de IA no desenvolvimento técnico, análise e documentação.

## Trabalho realizado

- Definição de lifecycle, qualificação, pipeline e critérios de entrada e saída.
- Especificação de responsabilidades, prazos e transferências entre equipes.
- Configuração e teste de tarefas, alertas e monitoramento no HubSpot.
- Validação de campos condicionais, motivos de perda e persistência do responsável.
- Testes simulados de confirmação financeira e transferência para onboarding.

## Resultados

| Frente | Resultado documentado |
|---|---|
| Desenho operacional | 8 transições e 60 itens de rastreabilidade na matriz |
| Primeiro contato — WF-003 | Delay de 1 dia útil, branch e tarefa atribuída ao owner observados no teste |
| Monitoramento — WF-004 | Negócio sintético sem próxima atividade gerou tarefa de verificação |
| Alerta — WF-002 | Alerta após 4 horas corridas executado; horas úteis não estavam disponíveis |
| Controle de estágio | Campos condicionais e motivo de perda controlado testados |
| Financeiro e onboarding | Cenários sintéticos PAID e PENDING validados; encerramento e handoff manuais |

O aceite entre equipes permaneceu manual. Nos cenários registrados, os workflows não alteraram automaticamente owner, Lead Status ou Deal Stage.

A seleção de owner no modal não persistiu em um teste; a atribuição direta no Deal foi o procedimento observado. Data da próxima ação e Next step são controles operacionais: a atividade real deve ser conferida na timeline.

## Evidências

![Recorte documental das regras de responsabilidade e prazo entre equipes](./evidence/NexaFlow_Ownership_SLA_Visual.svg)

A visualização reproduz a aba **04_Ownership_SLA**, linhas **5, 6, 8 e 9**, colunas **A, B, E, G, H e I**. Mostra a especificação de handoffs, não uma execução automática. A regra de alerta em horas úteis aparece no desenho; o teste do WF-002 observou **4 horas corridas**, como registrado acima.

- [Relatório final: configurações, testes e desvios](./evidence/03_NexaFlow_Lifecycle_Pipeline_Automation_Report.docx)
- [Matriz operacional que sustenta a visualização](./evidence/01_NexaFlow_Operational_Traceability_Matrix_v1.0.xlsx)

## Aprendizados e competências

A entrega demonstra desenho de processos, qualificação comercial, ownership, SLA, testes de workflows e acompanhamento de exceções. O aprendizado central foi conferir o comportamento real da configuração e preservar a responsabilidade até que a transferência fosse aceita.

A NexaFlow e os cenários financeiros são fictícios. Não houve transação nem integração financeira de produção. As evidências públicas são uma seleção; o log operacional completo não foi publicado por conter dados pessoais e identificadores internos.

[← Etapa anterior: arquitetura e migração](../01-crm-architecture-data-migration/) · [Apresentação do case](../README.md) · [Próxima etapa: relatórios e análise →](../03-revenue-reporting-operations-analytics/)
