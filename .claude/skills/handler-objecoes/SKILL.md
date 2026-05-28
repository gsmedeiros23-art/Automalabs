---
name: handler-objecoes
description: >
  Gera resposta calibrada para uma objeção específica levantada por um lead, baseada no contexto
  da venda e no perfil do cliente. Também constrói e atualiza a biblioteca de objeções por setor.
  Use quando o usuário colar uma objeção recebida, pedir "como respondo isso", "o cliente disse X",
  "ele falou que o preço é alto", "como rebater essa objeção", ou /handler-objecoes.
---

# /handler-objecoes — Respondedor de Objeções de Vendas

Gera a resposta certa para a objeção do momento e atualiza a biblioteca para não precisar pensar de novo na próxima vez.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md`
- **Biblioteca de objeções:** `marketing/vendas/objecoes.md` (criar se não existir)
- **Tom de voz:** `_memoria/preferencias.md`

---

## Workflow

### Passo 1 — Receber a objeção

O usuário cola ou descreve:
- A objeção exata do lead (literal ou parafraseada)
- O canal onde surgiu (call, WhatsApp, email)
- O contexto: qual produto, qual momento do funil, qual o perfil do lead

Se faltar contexto, perguntar:
> "O lead disse isso depois de ver a proposta ou antes? E qual produto foi apresentado?"

### Passo 2 — Classificar a objeção

Identificar o tipo real da objeção — muitas vezes não é o que parece:

| O que o lead diz | O que geralmente significa |
|---|---|
| "É caro" | Não viu valor suficiente ainda |
| "Preciso pensar" | Não decidiu, há dúvida não dita |
| "Não tenho tempo agora" | Não é prioridade no momento |
| "Vou falar com meu sócio" | Falta de autoridade ou de certeza |
| "Já tentei algo parecido e não funcionou" | Desconfiança baseada em experiência ruim |
| "Quero fazer uma pesquisa de mercado" | Falta de urgência ou medo de errar |

Informar a classificação antes de sugerir a resposta — entender o real antes de responder.

### Passo 3 — Gerar a resposta

**Estrutura da resposta (framework ACE):**
- **A — Acknowledge:** reconhecer a objeção sem defender ou atacar
- **C — Clarify:** fazer uma pergunta que abre a objeção (não rebater direto)
- **E — Evidence/Engage:** trazer prova, contexto ou reencuadramento

**Exemplo para "É caro":**
- A: "Faz sentido querer ter certeza que o investimento vale."
- C: "Você está comparando com outra solução específica ou com o custo de continuar sem resolver esse problema?"
- E: [dependendo da resposta: comparativo, case, ROI, ou reframing do valor]

**Gerar 3 versões da resposta:**
1. Para usar em call (oral, mais fluida)
2. Para usar por WhatsApp (2-3 linhas, direta)
3. Para usar por email (mais elaborada, com contexto e CTA)

### Passo 4 — Atualizar a biblioteca

Verificar se `marketing/vendas/objecoes.md` existe. Se não, criar.

Adicionar ou atualizar a entrada da objeção:

```markdown
## [Tipo de objeção] — "[Frase típica do lead]"

**Classificação:** [preço / prazo / confiança / prioridade / autoridade]
**O que geralmente significa:** [interpretação real]

**Resposta para call:**
[texto]

**Resposta para WhatsApp:**
[texto]

**Resposta para email:**
[texto]

**Casos onde não funciona:**
[contextos onde essa resposta é inadequada]

*Última atualização: [data]*
```

### Passo 5 — Output

Entregar as 3 versões diretamente no chat para uso imediato. Confirmar que a biblioteca foi atualizada.

---

## Regras

- Nunca rebater a objeção de frente — sempre reconhecer primeiro
- A pergunta de clarificação (C do ACE) é a parte mais importante — abre a real objeção
- Não usar argumentos genéricos de vendas ("nosso produto é o melhor do mercado")
- Se a objeção for legítima (ex: o produto realmente não resolve o problema do lead), dizer isso — honestidade cria confiança e evita clientes errados
- Versão WhatsApp nunca passa de 3 linhas
- Tom segue `_memoria/preferencias.md` — sem linguagem de vendedor agressivo
- A biblioteca cresce a cada negociação — é um ativo que melhora com o tempo
