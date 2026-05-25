---
name: newsletter-semanal
description: >
  Gera a newsletter semanal completa a partir de uma lista de links, temas ou anotações da semana.
  Entrega email com curadoria, dica prática, case ou insight e CTA suave — no tom do cliente.
  Use quando o usuário pedir "newsletter da semana", "email semanal", "gera o email da semana",
  "curadoria semanal", "newsletter", ou /newsletter-semanal.
---

# /newsletter-semanal — Gerador de Newsletter Semanal

Transforma links soltos e notas da semana em email pronto para enviar. Sem escrever do zero — da ideia ao email em minutos.

## Dependências

- **Tom de voz:** `_memoria/preferencias.md`
- **Contexto do negócio:** `_memoria/empresa.md`
- **Outputs vão em:** `marketing/email/newsletters/YYYY-MM-DD.md`

---

## Workflow

### Passo 1 — Receber o input

O usuário pode fornecer qualquer combinação de:
- Links de artigos, vídeos, podcasts ou posts para curadoria
- Tema ou assunto central da semana
- Uma dica, aprendizado ou insight da semana
- Um resultado de cliente para destacar
- Um evento, lançamento ou novidade relevante

Se o usuário não fornecer nada, perguntar:
> "O que aconteceu essa semana que vale compartilhar? Pode ser um link, uma dica, um resultado de cliente ou só um tema."

### Passo 2 — Estrutura do email

Montar o email com essa estrutura base, adaptando conforme o input:

```
ASSUNTO: [curto, específico, no tema da semana]
PREVIEW: [complementa o assunto — o que o leitor vai encontrar]

[Nome],

[ABERTURA — 1-2 frases conectando com o momento ou com algo relevante da semana]

---

📌 [SEÇÃO PRINCIPAL — dica, insight ou curadoria]
[2-3 parágrafos. Uma ideia central, desenvolvida com profundidade suficiente para gerar valor real]

---

[SEÇÃO SECUNDÁRIA (opcional) — link extra, case rápido ou citação]
[1 parágrafo ou 2-3 bullets]

---

[CTA SUAVE — convite, não venda]
[1 frase + link ou resposta à newsletter]

[Assinatura]
[Nome, de _memoria/empresa.md]

[Rodapé — descadastrar | visualizar no browser]
```

### Passo 3 — Curadoria dos links

Para cada link fornecido:
1. Usar WebFetch para ler o título, subtítulo e primeiros parágrafos
2. Extrair o insight mais relevante para o público da empresa
3. Escrever 1-2 frases de contexto próprio antes de linkar — não só jogar o link

Se for mais de 2 links, escolher o mais relevante como seção principal e mencionar os outros de forma compacta ao final.

### Passo 4 — Tom e calibração

Seguir `_memoria/preferencias.md` estritamente. Em geral para newsletter:
- Tom mais próximo e direto do que outros canais — pode ser ligeiramente mais pessoal
- Evitar abertura genérica ("Olá", "Espero que esteja bem", "Essa semana trouxemos")
- Evitar fechamento vazio ("Qualquer dúvida estou à disposição")
- CTA suave: sugestão, pergunta ou convite — não oferta direta na newsletter recorrente

### Passo 5 — Output

Salvar em `marketing/email/newsletters/<YYYY-MM-DD>.md` com o email completo + assunto + preview text.

Mostrar o email no chat para aprovação antes de salvar.

---

## Regras

- Newsletter semanal não é canal de venda direta — o CTA é sempre suave (leitura, reflexão, resposta)
- Uma ideia principal por email — não tentar cobrir tudo da semana
- Curadoria com contexto próprio vale mais do que lista de links sem opinião
- Se não tiver input suficiente, perguntar — não inventar conteúdo da semana
- Assunto específico bate assunto genérico: "3 erros no briefing de projeto" > "Newsletter semanal"
- Tom segue `_memoria/preferencias.md` — sem corporativês, sem "conteúdo de valor"
