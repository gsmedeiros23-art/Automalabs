---
name: copy-whatsapp
description: >
  Cria coleções de mensagens para WhatsApp Business por etapa do funil (boas-vindas, nutrição,
  urgência, encerramento) ou broadcasts segmentados por comportamento. Mensagens curtas, diretas,
  no tom da marca — nunca parecem disparo em massa.
  Use quando o usuário pedir "mensagem para whatsapp", "texto pro zap", "broadcast whatsapp",
  "nutrição pelo whatsapp", "sequência de mensagens", ou /copy-whatsapp.
---

# /copy-whatsapp — Copywriter de Mensagens WhatsApp

Gera coleções de mensagens por etapa do funil ou broadcasts segmentados. Cada mensagem com no máximo 3 linhas — direta, no tom certo para cada momento.

## Dependências

- **Tom de voz:** `_memoria/preferencias.md`
- **Contexto do negócio:** `_memoria/empresa.md`
- **Outputs vão em:** `marketing/whatsapp/<tipo>-<data>.md`

---

## Tipos de entregável

### Tipo 1 — Coleção por etapa do funil

Gerar mensagem base + 3 variações para cada etapa:

**Boas-vindas** (enviada imediato após cadastro)
- Tom: caloroso, mas não excessivo
- Objetivo: confirmar o canal, apresentar o próximo passo
- Máximo: 3 linhas
- Sem emoji excessivo (máximo 1 por mensagem, se combinar com o tom)
- Exemplo de estrutura: [saudação + contexto de como chegou aqui] + [o que vai receber] + [CTA simples]

**Nutrição — Mensagem 1** (+2 dias)
- Tom: útil, sem pedir nada
- Objetivo: entregar valor antes de qualquer CTA
- Estrutura: [insight ou dica curta] + [link para conteúdo relevante, se houver]

**Nutrição — Mensagem 2** (+5 dias)
- Tom: próximo, referencia o que foi enviado antes
- Objetivo: aprofundar engajamento, despertar curiosidade
- Estrutura: [pergunta ou provocação] + [insight] + [convite a responder]

**Nutrição — Mensagem 3** (+9 dias)
- Tom: mais direto, começando a apontar para o produto
- Objetivo: transição natural para o fundo de funil
- Estrutura: [caso/resultado concreto] + [conexão com o problema do lead] + [CTA suave]

**Urgência** (para momento específico de oferta ou prazo)
- Tom: direto, concreto
- Objetivo: comunicar prazo ou disponibilidade real
- Nunca inventar urgência — só usar se for verdadeiro

**Encerramento** (último contato antes de mover para inativo)
- Tom: honesto, sem drama
- Objetivo: última tentativa limpa
- Estrutura: [referência ao contexto] + [pergunta direta "ainda faz sentido?"] + [saída sem pressão]

### Tipo 2 — Broadcast segmentado

Gerar mensagem específica para um segmento da base:

**Segmentos comuns:**
- Quem baixou lead magnet X mas não agendou call
- Quem participou de evento/webinar
- Clientes ativos (upsell ou indicação)
- Inativos de 30+ dias

Para cada segmento, gerar:
1. **Gancho** — linha de abertura que referencia o comportamento ou contexto do segmento
2. **Corpo** — 2-3 linhas com o conteúdo ou oferta
3. **CTA** — 1 ação clara com link ou instrução

---

## Workflow

### Passo 1 — Entender o pedido

Identificar:
- Tipo 1 (coleção por etapa) ou Tipo 2 (broadcast)?
- Qual produto ou serviço está em pauta?
- Qual o momento do lead (topo, meio, fundo)?
- Tem prazo ou oferta específica?

### Passo 2 — Escrever as mensagens

**Regras de formato WhatsApp:**
- Máximo 3 linhas por mensagem (mobile first — bloco longo não se lê)
- Uma mensagem = uma ideia
- Negrito com *asteriscos* para destaque pontual (máximo 1 por mensagem)
- Sem parágrafos longos — quebrar em múltiplas mensagens se necessário
- Emoji: seguir tom de `_memoria/preferencias.md`. Se a marca é formal, sem emoji. Se é próxima, 1 por mensagem

**Regras de tom:**
- Nunca começar com "Olá!" genérico
- Nunca terminar com "Qualquer dúvida estou à disposição"
- CTA com verbo no imperativo: "Responde aqui", "Acessa o link", "Me fala"
- Referência ao contexto do lead sempre que possível

### Passo 3 — Output

```markdown
# Copy WhatsApp — [Tipo] | [Data]

## [Nome da etapa ou segmento]

**Mensagem:**
[texto da mensagem]

**Variação A:**
[texto alternativo]

**Variação B:**
[texto alternativo]

---
```

Salvar em `marketing/whatsapp/<tipo>-<YYYY-MM-DD>.md`.

---

## Regras

- Mensagem de WhatsApp não é email — sem introdução, sem corpo longo, sem rodapé
- Urgência falsa destroça confiança e aumenta bloqueio — só usar se real
- Broadcast segmentado sempre referencia por que aquele lead específico está recebendo aquela mensagem
- Tom segue `_memoria/preferencias.md` estritamente
- Se o produto tiver ticket alto, o tom precisa ser proporcional — sem "confere aí!" pra produto de R$10k
