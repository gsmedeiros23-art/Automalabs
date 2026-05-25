---
name: analisar-email
description: >
  Analisa relatório de performance de emails (taxa de abertura, clique, descadastro) e gera
  reescritas de subject line e corpo para emails com baixa performance. Identifica padrões
  e sugere ajustes para a sequência inteira.
  Use quando o usuário pedir "analisar emails", "meus emails não abrem", "taxa de abertura baixa",
  "quais emails tão mal", "otimizar sequência de email", ou /analisar-email.
---

# /analisar-email — Análise de Performance de E-mails

Transforma dados de abertura e clique em diagnóstico acionável — com reescritas prontas para os emails que estão puxando a sequência pra baixo.

## Dependências

- **Tom de voz:** `_memoria/preferencias.md`
- **Contexto:** `_memoria/empresa.md`
- **Input:** relatório de performance do ESP (CSV, print ou texto copiado)
- **Outputs vão em:** `marketing/email/analise/<YYYY-MM-DD>/`

---

## Workflow

### Passo 1 — Receber os dados

O usuário pode colar:
- Export CSV do ActiveCampaign, Mailchimp, RD Station ou similar
- Print com os números (transcrever antes de analisar)
- Texto com as métricas copiadas manualmente

Colunas mínimas esperadas: Email / Assunto | Taxa de abertura | Taxa de clique | Taxa de descadastro | Envios

Se faltar dado crítico (abertura), avisar e pedir antes de continuar.

### Passo 2 — Benchmarks de referência

Usar os seguintes benchmarks para classificar a performance:

| Métrica | Ruim | Aceitável | Bom | Excelente |
|---|---|---|---|---|
| Taxa de abertura | < 15% | 15-25% | 25-40% | > 40% |
| Taxa de clique (sobre abertos) | < 2% | 2-5% | 5-12% | > 12% |
| Taxa de descadastro | > 0.5% | 0.3-0.5% | 0.1-0.3% | < 0.1% |

Esses são benchmarks de email marketing B2B/serviços. Ajustar se o segmento for diferente.

### Passo 3 — Diagnóstico geral

Analisar a sequência como um todo:

**Padrão de queda:**
- A abertura cai do E1 pro E2? → Problema no E1 (promessa não cumprida)
- A abertura mantém mas o clique é baixo? → Problema no CTA ou na oferta
- Descadastro alto em email específico? → Tom errado ou assunto enganoso

**Identificar:**
- Top 3 emails por abertura (o que está funcionando)
- Bottom 3 por abertura (onde focar a reescrita)
- Email com maior taxa de descadastro (prioridade máxima)

### Passo 4 — Diagnóstico por email

Para cada email abaixo do benchmark, analisar:

1. **Causa provável do problema:**
   - Assunto fraco? (abertura baixa)
   - Preview text não complementa? (abertura baixa)
   - CTA enterrado? (clique baixo)
   - Email longo demais? (clique baixo)
   - Tom errado pra esse momento da sequência? (descadastro)

2. **Reescrita sugerida:**
   - Novo assunto (3 opções)
   - Novo preview text
   - Se o corpo precisar de ajuste: reescrever a abertura e o CTA (não o email todo)

### Passo 5 — Output

```markdown
# Análise de E-mails — [Data]
*[N] emails analisados | Período: [período dos dados]*

## Resumo executivo

**Média de abertura da sequência:** X% (benchmark: 25-40%)
**Média de clique:** X% (benchmark: 5-12%)
**Email com maior abertura:** E[N] "[assunto]" — X%
**Email com maior problema:** E[N] "[assunto]" — X% abertura, X% descadastro

**Padrão identificado:** [diagnóstico em 1-2 frases]

---

## O que está funcionando

- **E[N] "[assunto]":** X% de abertura — [por que está funcionando]
- ...

## O que precisa de ajuste

### E[N] — "[assunto atual]" (X% abertura)

**Causa provável:** [diagnóstico]

**Reescrita sugerida:**
- Assunto A: [novo assunto]
- Assunto B: [nova opção]
- Assunto C: [nova opção]
- Preview text: [novo preview]
- Ajuste no corpo: [mudança específica — não reescrever tudo]

---

## 3 ações para essa semana

1. [ação concreta — ex: "Substituir assunto do E3 pela opção A acima"]
2. [ação concreta]
3. [ação concreta]
```

---

## Regras

- Nunca inventar dados — só analisar o que foi fornecido
- Se a base for pequena (< 200 envios), deixar claro que os dados têm baixa significância estatística
- Reescrita de corpo: só abertura e CTA — não reescrever o email inteiro sem necessidade
- Diagnóstico antes de prescrição — entender o porquê antes de sugerir a solução
- Alta taxa de descadastro é sinal vermelho: investigar o email antes de qualquer outra coisa
- Tom da reescrita segue `_memoria/preferencias.md`
