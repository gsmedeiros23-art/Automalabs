---
name: analisar-funil
description: >
  Analisa dados do CRM (leads por etapa, taxas de conversão, tempo médio em cada fase) e gera
  relatório de saúde do funil com gargalo principal identificado e recomendações de onde focar.
  Use quando o usuário pedir "analisar o funil", "onde estou perdendo leads", "relatório do CRM",
  "saúde do funil", "taxa de conversão", ou /analisar-funil.
---

# /analisar-funil — Análise de Saúde do Funil de Vendas

Transforma dados do CRM em diagnóstico acionável — onde o funil está vazando, o que está funcionando e o que fazer no próximo mês.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md` (produto, ticket, ciclo de venda esperado)
- **Estratégia:** `_memoria/estrategia.md` (metas, prioridades atuais)
- **Input:** dados do CRM — manual, CSV ou texto copiado
- **Outputs vão em:** `marketing/analise/funil-<YYYY-MM-DD>.md`

---

## Workflow

### Passo 1 — Receber os dados

O usuário fornece qualquer combinação de:
- Número de leads em cada etapa do pipeline
- Taxa de conversão de etapa para etapa
- Tempo médio que os leads ficam em cada etapa
- Número de deals perdidos e em que etapa
- Motivo de perda (se registrado no CRM)

Se os dados forem muito básicos (ex: "tive 30 leads esse mês e fechei 3"), trabalhar com o que tem e indicar quais dados coletar no próximo período.

### Passo 2 — Calcular as taxas de conversão por etapa

Para cada transição de etapa, calcular:
- Taxa de conversão: (leads na etapa seguinte / leads na etapa atual) × 100
- Comparar com benchmarks do setor se disponível

**Benchmarks de referência para serviços B2B:**

| Etapa | Taxa saudável | Alerta |
|---|---|---|
| Lead → Qualificado | > 40% | < 25% |
| Qualificado → Reunião | > 60% | < 35% |
| Reunião → Proposta | > 70% | < 50% |
| Proposta → Fechado | > 25% | < 15% |

Adaptar os benchmarks ao setor e ticket do negócio se necessário.

### Passo 3 — Identificar o gargalo

O gargalo é a etapa com a maior queda de conversão em relação ao esperado. É onde a intervenção tem maior impacto.

Classificar as causas prováveis por tipo de gargalo:

| Gargalo | Causa mais comum | Intervenção típica |
|---|---|---|
| Lead → Qualificado | Geração de leads pouco segmentada | Refinar critérios do anúncio ou lead magnet |
| Qualificado → Reunião | Follow-up fraco ou resposta lenta | Ativar /sequencia-fechamento ou /copy-whatsapp |
| Reunião → Proposta | Call sem próximo passo combinado | Treinar para fechar próximo passo na call |
| Proposta → Fechado | Proposta genérica ou follow-up ausente | Usar /proposta-comercial + /sequencia-fechamento |

### Passo 4 — Relatório

```markdown
# Análise do Funil — [Mês/Período]
*[N] leads analisados | Gerado em [data]*

## Resumo executivo

**Leads entrados:** [N]
**Deals fechados:** [N] ([X]% do total)
**Receita gerada:** R$ [X] (se disponível)
**Ciclo médio de venda:** [X dias]

**Gargalo principal:** [etapa] — taxa de [X]% (esperado: [benchmark])
**O que isso significa:** [diagnóstico em 1-2 frases]

---

## Saúde por etapa

| Etapa | Leads | Taxa de conversão | Status |
|---|---|---|---|
| Entrada | [N] | — | — |
| Qualificado | [N] | [X]% | 🟢/🟡/🔴 |
| Reunião | [N] | [X]% | 🟢/🟡/🔴 |
| Proposta | [N] | [X]% | 🟢/🟡/🔴 |
| Fechado | [N] | [X]% | 🟢/🟡/🔴 |

## O que está funcionando

- [ponto forte com dado]
- [ponto forte]

## O que precisa de ajuste

### 🔴 [Gargalo principal — etapa]
**Causa provável:** [diagnóstico]
**Intervenção recomendada:** [ação concreta com skill ou tática]

### 🟡 [Ponto de atenção secundário]
**Causa provável:** [diagnóstico]
**Intervenção:** [ação]

---

## 3 ações para o próximo mês

1. **[Ação 1]** — [por que essa é a prioridade] → responsável: [quem]
2. **[Ação 2]** → responsável: [quem]
3. **[Ação 3]** → responsável: [quem]

## O que medir no próximo período

- [métrica 1 para acompanhar]
- [métrica 2]
```

---

## Regras

- Nunca inventar dados — se a informação não estiver disponível, indicar "não registrado" e sugerir como coletar
- Gargalo: identificar um, máximo dois — mais do que isso dilui o foco
- Ações: concretas, com responsável e prazo — "melhorar o follow-up" não é ação, "rodar /sequencia-fechamento para todos os leads em proposta até [data]" é
- Benchmarks são referências, não verdades absolutas — adaptar ao contexto do negócio
- Se o volume for pequeno (< 20 leads), alertar que os dados têm baixa significância — mas ainda assim fazer a análise
- Conectar as recomendações com as skills disponíveis quando possível
