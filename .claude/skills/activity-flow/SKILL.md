---
name: activity-flow
description: >
  Constrói o activity flow comercial: funil reverso (meta → contatos/dia),
  rotina diária e semanal por papel (SDR, AE, Gestor), cadências de follow-up,
  tabela de SLA e regras de higiene do CRM.
  Use quando o usuário pedir "activity flow", "rotina comercial", "cadência de atividades",
  "quantos contatos por dia", "funil reverso", ou /activity-flow.
---

Você é um especialista em operações de vendas e vai construir o Activity Flow Comercial — o plano detalhado de atividades diárias, semanais e mensais que cada papel da equipe comercial deve executar para atingir a meta. É a "agenda operacional" da operação.

## O que é o Activity Flow
O activity flow responde: "O que exatamente cada pessoa precisa fazer, em qual frequência e em qual canal para que a máquina de vendas funcione?"

Ele conecta:
- **Meta comercial** → quantos clientes precisamos fechar?
- **Funil reverso** → quantas atividades são necessárias para gerar esse resultado?
- **Rotina diária/semanal** → como isso se traduz em atividades concretas por papel?

## Passo 1 — Carregar Contexto
Verifique se existe o arquivo `cliente-contexto.md`. Se existir, leia-o. O activity flow deve ser consistente com o blueprint, playbook e funil definidos anteriormente.

## Passo 2 — Entrevista Complementar

Apresente-se assim:
> "Agora vamos montar o Activity Flow — a rotina operacional da equipe comercial. O objetivo é ter clareza de quantas atividades são necessárias por dia/semana para bater a meta, e como isso deve ser distribuído. Preciso de alguns números para calibrar."

### Bloco 1 — Metas e Capacidade
1. Qual a meta de novos clientes por mês?
2. Qual o ticket médio? (para calcular meta de receita)
3. Quantas pessoas há na equipe comercial hoje? (ou quantas haverá)
4. Quantas horas por dia cada vendedor dedica exclusivamente para prospecção e vendas?
5. A equipe tem SDR (prospecção) separado do closer (fechamento), ou o mesmo vendedor faz tudo?

### Bloco 2 — Taxas de Conversão (use dados do diagnóstico ou estimativas)
6. Qual a taxa de resposta ao primeiro contato? (ex: 1 em 10 mensagens retorna)
7. Qual a taxa de reunião agendada sobre leads que responderam?
8. Qual a taxa de conversão de reunião para proposta?
9. Qual a taxa de fechamento (proposta → cliente)?
10. Existe sazonalidade que afeta essas taxas em algum período?

### Bloco 3 — Canais e Abordagem
11. Quais canais de prospecção são usados? (WhatsApp, email, LinkedIn, telefone, eventos)
12. Qual canal tem melhor taxa de resposta hoje?
13. Existe uma cadência de follow-up definida? Quantas tentativas em quantos dias?
14. Qual o volume de leads novos que entram no funil por semana (inbound + outbound)?

### Bloco 4 — Rotina Atual
15. Como é a rotina do vendedor hoje? Existe estrutura de horários para prospecção?
16. Existe alguma reunião comercial recorrente (daily, weekly pipeline review)?
17. Quanto tempo em média leva para preparar uma reunião de diagnóstico?
18. Qual a maior "ladrona de tempo" do vendedor hoje? (o que ele faz que não deveria fazer)

## Passo 3 — Calcular Funil Reverso

Com base nas respostas, calcule automaticamente:

```
META MENSAL: [X] clientes novos

Funil Reverso:
├── Clientes fechados/mês:          [X]
├── Propostas necessárias/mês:      [X ÷ taxa fechamento]
├── Reuniões diagnóstico/mês:       [X ÷ taxa proposta]
├── Leads qualificados/mês:         [X ÷ taxa reunião]
├── Respostas necessárias/mês:      [X ÷ taxa resposta]
└── Contatos (toques) necessários/mês: [X ÷ taxa contato]
     = [Y contatos/semana] = [Z contatos/dia]
```

Mostre o cálculo ao usuário e confirme se os números parecem realistas antes de gerar o documento.

## Passo 4 — Gerar Documento Entregável

---

# Activity Flow Comercial — [Nome da Empresa]
**Data:** [data] | **Versão:** 1.0 | **Válido para meta de:** [X clientes/mês]

---

## 1. Meta e Funil Reverso

### Meta Mensal
| Métrica | Valor |
|---|---|
| Clientes novos/mês | [X] |
| Receita nova/mês | R$ [X] |
| Ticket médio | R$ [X] |

### Funil Reverso — Atividades Necessárias

| Etapa | Taxa de Conversão | Necessário/Mês | Necessário/Semana | Necessário/Dia |
|---|---|---|---|---|
| Clientes fechados | — | [X] | [X] | [X] |
| Propostas enviadas | [X]% | [X] | [X] | [X] |
| Reuniões diagnóstico | [X]% | [X] | [X] | [X] |
| Leads qualificados | [X]% | [X] | [X] | [X] |
| Respostas recebidas | [X]% | [X] | [X] | [X] |
| **Contatos feitos (toques)** | **[X]%** | **[X]** | **[X]** | **[X]** |

> **Conclusão:** Para atingir [X] clientes/mês, a equipe precisa fazer **[Z] contatos por dia** (distribuídos por canal conforme abaixo).

---

## 2. Distribuição de Atividades por Canal

| Canal | % dos Contatos | Contatos/Dia | Razão |
|---|---|---|---|
| WhatsApp | [X]% | [X] | [melhor taxa de resposta] |
| Email | [X]% | [X] | [escala, nurturing] |
| LinkedIn | [X]% | [X] | [prospecção fria B2B] |
| Telefone | [X]% | [X] | [quando necessário] |
| **Total** | **100%** | **[Z]** | |

---

## 3. Rotina por Papel

### 3.1 SDR / Prospector

**Meta:** [X] reuniões agendadas/semana

#### Rotina Diária

| Horário | Atividade | Duração | Ferramenta | Meta |
|---|---|---|---|---|
| 08:00-09:00 | Pesquisa e preparação de novos leads | 60 min | LinkedIn/[ferramenta] | [X] leads pesquisados |
| 09:00-10:30 | Prospecção ativa — primeiro contato | 90 min | WhatsApp/Email | [X] contatos |
| 10:30-11:00 | Resposta a leads que retornaram | 30 min | WhatsApp/Email | 0 pendências |
| 11:00-12:00 | Follow-up da cadência ativa | 60 min | Multi-canal | [X] follow-ups |
| 14:00-15:00 | LinkedIn — conexões e mensagens | 60 min | LinkedIn | [X] mensagens |
| 15:00-16:00 | Atualização do CRM + planejamento D+1 | 60 min | CRM | Pipeline atualizado |
| 16:00-17:00 | Follow-up final do dia | 60 min | WhatsApp | [X] contatos |

**Totais diários:** [X] contatos | [X] follow-ups | [X] leads novos pesquisados

#### Rotina Semanal

| Dia | Foco Especial | Meta |
|---|---|---|
| Segunda | Planejamento da semana + lote de pesquisa de leads | [X] leads mapeados |
| Terça | Prospecção intensiva (melhor dia de resposta) | [X] contatos |
| Quarta | Follow-ups + reuniões de qualificação | [X] reuniões |
| Quinta | Prospecção intensiva + LinkedIn | [X] contatos |
| Sexta | Fechamento de cadências + limpeza do CRM | Pipeline limpo |

#### KPIs do SDR

| KPI | Meta Diária | Meta Semanal | Meta Mensal |
|---|---|---|---|
| Contatos feitos (1º toque) | [X] | [X] | [X] |
| Follow-ups enviados | [X] | [X] | [X] |
| Respostas recebidas | [X] | [X] | [X] |
| Reuniões agendadas | [X] | [X] | [X] |
| Taxa de no-show | — | — | < [X]% |

---

### 3.2 Account Executive / Closer

**Meta:** [X] propostas enviadas/semana | [X] clientes fechados/mês

#### Rotina Diária

| Horário | Atividade | Duração | Ferramenta | Meta |
|---|---|---|---|---|
| 08:00-08:30 | Revisão do pipeline + priorização do dia | 30 min | CRM | Lista de prioridades definida |
| 08:30-10:00 | Preparação de reuniões do dia (pesquisa + SPIN) | 90 min | CRM/LinkedIn | [X] reuniões preparadas |
| 10:00-12:00 | Bloco de reuniões de diagnóstico/demo | 2h | Meet/Zoom | [X] reuniões |
| 14:00-15:30 | Elaboração de propostas | 90 min | [ferramenta] | [X] propostas |
| 15:30-16:30 | Follow-up de propostas enviadas | 60 min | WhatsApp/Email | [X] follow-ups |
| 16:30-17:00 | Atualização do CRM | 30 min | CRM | Pipeline atualizado |

**Totais diários:** [X] reuniões | [X] propostas | [X] follow-ups de proposta

#### Rotina Semanal

| Dia | Foco Especial | Meta |
|---|---|---|
| Segunda | Revisão do pipeline + follow-ups urgentes | Pipeline limpo |
| Terça-Quarta | Bloco de reuniões | [X] reuniões |
| Quinta | Propostas + negociações ativas | [X] propostas enviadas |
| Sexta | Fechamentos + atualização do CRM | [X] contratos |

#### KPIs do AE

| KPI | Meta Diária | Meta Semanal | Meta Mensal |
|---|---|---|---|
| Reuniões realizadas | [X] | [X] | [X] |
| Propostas enviadas | [X] | [X] | [X] |
| Follow-ups de proposta | [X] | [X] | [X] |
| Negociações abertas | — | — | [X] |
| Clientes fechados | — | — | [X] |
| Receita gerada | — | — | R$ [X] |

---

### 3.3 Gestor Comercial

#### Cadências de Gestão

**Daily (15 min — toda manhã)**
- [ ] Revisão do pipeline do dia anterior
- [ ] Deals em risco ou parados
- [ ] Reuniões e compromissos do dia

**Weekly Pipe Review (1h — toda segunda)**
- [ ] Review de oportunidades por etapa
- [ ] Deals estagnados há mais de [X] dias
- [ ] Forecast do mês
- [ ] Feedback individual para cada vendedor
- [ ] Ajuste de prioridades da semana

**Monthly Review (2h — primeira semana do mês)**
- [ ] Análise de taxas de conversão por etapa
- [ ] Análise de motivos de perda
- [ ] Comparison: meta vs. realizado
- [ ] Ajuste de cotas e atividades para o próximo mês
- [ ] Calibração do funil reverso

#### Dashboard de Acompanhamento Diário

| Métrica | Hoje | Semana | Mês | Meta Mês |
|---|---|---|---|---|
| Contatos feitos | | | | [X] |
| Reuniões realizadas | | | | [X] |
| Propostas enviadas | | | | [X] |
| Contratos fechados | | | | [X] |
| Receita gerada | | | | R$ [X] |

---

## 4. Cadência de Follow-up — Tabela de Referência

### Cadência de Prospecção (lead novo)

| Dia | Canal | Tipo de Mensagem | Objetivo |
|---|---|---|---|
| D+0 | WhatsApp ou Email | Primeiro contato personalizado | Gerar resposta |
| D+2 | WhatsApp | Follow-up curto + novo ângulo de valor | Gerar resposta |
| D+4 | LinkedIn | Conexão + mensagem | Gerar resposta |
| D+7 | Email | Conteúdo de valor (case ou insight) | Manter presença |
| D+12 | WhatsApp | Break-up message | Decisão clara |

### Cadência Pós-Reunião

| Timing | Canal | Ação |
|---|---|---|
| Mesmo dia (até 2h após) | WhatsApp | Agradecimento + resumo dos pontos discutidos |
| D+1 | Email | Materiais prometidos na reunião |
| D+3 (se sem proposta) | WhatsApp | Check-in e confirmação de prazo da proposta |
| Dia do envio da proposta | WhatsApp | Confirmação de envio + oferta de revisão conjunta |
| D+2 após proposta | WhatsApp | "Você teve chance de olhar?" |
| D+5 após proposta | Email + WhatsApp | Follow-up com dado de valor adicional |
| D+10 após proposta | WhatsApp | Urgência/validade |

### Cadência de Nurturing (leads não qualificados)

| Frequência | Canal | Tipo de Conteúdo |
|---|---|---|
| Quinzenal | Email | Newsletter / Conteúdo relevante do segmento |
| Mensal | WhatsApp | Check-in personalizado ("Como estão as coisas em [empresa]?") |
| Trimestral | LinkedIn | Comentário em post ou mensagem de contexto |

---

## 5. Regras Operacionais

### Regras de SLA (tempo máximo de resposta/ação)

| Situação | SLA | Responsável |
|---|---|---|
| Lead inbound recebido | Contato em até [X] horas | SDR |
| Indicação recebida | Contato em até [X] horas | AE |
| Prospect respondeu mensagem | Resposta em até [X] horas | SDR/AE |
| Reunião realizada | Follow-up em até 2 horas | AE |
| Proposta solicitada | Envio em até 24 horas | AE |
| Contrato assinado | Handoff para CS no mesmo dia | AE |

### Regras de Higiene do CRM

- Nenhum lead fica sem "próxima ação" e "data de próxima ação" no CRM
- Leads parados há mais de [X] dias são marcados como em risco
- Motivo de perda é obrigatório para qualquer lead movido para "perdido"
- Pipeline é revisado e limpo toda sexta-feira

### Regras de Priorização

1. **Primeiro:** Deals em negociação e propostas pendentes (dinheiro na mesa)
2. **Segundo:** Leads qualificados com reunião agendada
3. **Terceiro:** Follow-ups da cadência ativa
4. **Quarto:** Prospecção de novos leads

---

## 6. Plano de Implementação

### Semana 1
- [ ] Apresentar activity flow para a equipe
- [ ] Definir blocos de tempo fixos na agenda de cada papel
- [ ] Configurar CRM para tracking das atividades
- [ ] Primeira daily de 15 min

### Semanas 2-4
- [ ] Equipe segue o flow e registra dificuldades
- [ ] Ajustar volumes se os números estiverem irrealistas
- [ ] Primeira weekly pipe review

### Mês 2
- [ ] Analisar se o funil reverso está calibrado
- [ ] Ajustar taxas com base em dados reais
- [ ] Versão 2.0 do activity flow com números reais

---
*Activity Flow v1.0 — [data]. As metas de atividade devem ser revisadas mensalmente com base nas taxas de conversão reais.*

---

**Passo 5 — Atualizar contexto**
Adicione ao arquivo `cliente-contexto.md`:

```markdown
## Activity Flow
- **Meta mensal:** [X] clientes
- **Contatos necessários/dia:** [X]
- **Papéis com rotina definida:** [lista]
- **SLA de atendimento:** [X horas]
- [x] Activity Flow concluído
```

Ao final, informe:
> "Activity Flow pronto. O último entregável da série é os **Scripts de WhatsApp** (`/scripts-whatsapp`), que vai criar todos os templates de mensagem para cada etapa do funil — do primeiro contato ao follow-up pós-proposta."
