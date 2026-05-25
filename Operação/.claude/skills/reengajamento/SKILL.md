---
name: reengajamento
description: >
  Cria sequência de reengajamento para leads inativos (30, 60 ou 90 dias sem interação).
  Gera 3 emails com ângulos diferentes por segmento — não disparo genérico para toda a base.
  Use quando o usuário pedir "reativar leads", "leads frios", "sequência de reengajamento",
  "campanha de reativação", "inativos na base", ou /reengajamento.
---

# /reengajamento — Sequência de Reengajamento de Leads Inativos

Não é disparo em massa. É sequência cirúrgica por segmento de comportamento — cada grupo de inativos recebe abordagem diferente.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md`
- **Tom de voz:** `_memoria/preferencias.md`
- **Outputs vão em:** `marketing/email/reengajamento/<segmento>-<data>/`

---

## Workflow

### Passo 1 — Definir o segmento

Perguntar ao usuário:

1. **Qual o critério de inatividade?**
   - 30 dias sem abrir email
   - 60 dias sem clicar em nenhum link
   - 90 dias sem nenhuma interação
   - Nunca abriu nenhum email desde o cadastro

2. **O que esses leads tinham em comum quando entraram?** (qual lead magnet, qual campanha, qual origem)

3. **O que mudou ou melhorou desde que eles pararam de interagir?** (novo produto, novo case, nova oferta, melhoria no serviço)

4. **O que acontece se não responderem à sequência?** (mover para lista inativa, remover, manter com frequência menor)

### Passo 2 — Estrutura dos 3 emails

**Email 1 — Valor antes de qualquer pedido**
- Objetivo: reabrir o canal sem pedir nada
- Ângulo: "Trouxe algo que pode ser útil pra você agora"
- Assunto: curto, sem drama, sem "saudades de você"
- Corpo: insight genuíno + link para conteúdo relevante + 1 pergunta simples (responder ao email)
- CTA: resposta direta ao email ou leitura de conteúdo

**Email 2 — Oferta ou acesso especial** (+3 dias)
- Objetivo: criar razão concreta para voltar
- Ângulo: algo exclusivo para quem está na base (não para quem está chegando)
- Assunto: mencionar o benefício específico
- Corpo: oferta clara, limitada a leads existentes, com deadline real
- CTA: link direto para a oferta

**Email 3 — Encerramento com CTA direto** (+3 dias)
- Objetivo: fechar o ciclo — ou reativa ou sai
- Ângulo: honestidade direta sem drama
- Assunto: curto e direto ("Meu último email pra você")
- Corpo: 3-4 frases. Dizer que é o último contato. Perguntar se faz sentido continuar. CTA final
- CTA: "Se quiser continuar recebendo, [link de confirmação]" ou oferta final

**O que fazer se não interagirem com nenhum dos 3:**
- Mover para lista inativa (suprimir dos envios por 6 meses)
- Ou remover se o usuário preferir base limpa
- Nunca continuar enviando para quem claramente não tem interesse — prejudica deliverability

### Passo 3 — Ajustar por segmento

| Segmento | Tom do E1 | Oferta do E2 | E3 |
|---|---|---|---|
| Nunca abriram | Neutro, sem assumir relação | Acesso gratuito a algo valioso | Saída limpa |
| Abriram mas pararam | Próximo, referência ao começo | Upgrade ou novidade | Saudade + saída |
| Clicavam mas sumiram | Direto, referência ao interesse | Oferta ligada ao que clicavam | Pergunta direta |

### Passo 4 — Output

```markdown
# Reengajamento — [Segmento] | [Data]

**Critério:** [30/60/90 dias sem interação]
**Origem do segmento:** [lead magnet / campanha]
**Se não responder:** [ação pós-sequência]

---

## Email 1 — Valor
**Timing:** Dia 0
**Assunto:** [assunto]
**Preview:** [preview text]

[corpo]

---

## Email 2 — Oferta
**Timing:** Dia 3
...

---

## Email 3 — Encerramento
**Timing:** Dia 6
...
```

---

## Regras

- Nunca abrir com "Saudades" ou "Sumiu?" — parece automação genérica
- Nunca mentir sobre ser o "último email" e depois continuar enviando
- Oferta do E2 precisa ser real — desconto falso ou urgência fabricada destrói confiança
- Deliverability primeiro: base suja prejudica toda a lista — reengajamento limpa, não infla
- Se o usuário não souber o que acontece com quem não reage, propor: "Sugiro mover para lista fria e reativar só em grandes lançamentos"
- Tom segue `_memoria/preferencias.md`
