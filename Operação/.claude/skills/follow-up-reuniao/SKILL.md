---
name: follow-up-reuniao
description: >
  Gera mensagem de acompanhamento personalizada (email + WhatsApp) para o dia seguinte à reunião.
  Referencia o que foi dito na call — não parece template, parece escrito por quem esteve presente.
  Use quando o usuário pedir "follow-up da reunião", "mensagem pós-call", "email depois da reunião",
  "texto pra mandar depois da reunião", ou /follow-up-reuniao.
---

# /follow-up-reuniao — Mensagem de Follow-up Pós-Reunião

Gera a mensagem de acompanhamento para email e WhatsApp que vai no dia seguinte à call. Referencia o que foi dito, confirma o próximo passo e mantém o momentum.

## Dependências

- **Análise da reunião:** `clientes/<nome>/reunioes/<data>-analise.md` (se existir)
- **Tom de voz:** `_memoria/preferencias.md`
- **Contexto do negócio:** `_memoria/empresa.md`

---

## Workflow

### Passo 1 — Receber o contexto

Se existir análise da reunião em arquivo, ler. Se não, perguntar:

1. **Com quem foi a reunião?** (nome, cargo)
2. **Qual foi o ponto mais relevante da conversa?** (a dor principal ou o que o lead mais valorizou)
3. **O que ficou combinado?** (próximo passo acordado)
4. **Vai enviar proposta logo?** (sim/não — impacta o tom do follow-up)

### Passo 2 — Escrever o email

**Estrutura do email:**

```
Assunto: [específico — referencia o que foi falado, não "Follow-up da reunião"]

[Nome],

[ABERTURA — 1 frase referenciando algo específico da conversa — não "Foi um prazer falar com você"]

[PARAGRAFO 1 — síntese do que foi discutido em 2-3 frases, mostrando que ouviu]

[PARAGRAFO 2 — próximo passo claro: o que vem agora e quando]

[PARAGRAFO 3 (opcional) — recurso complementar se houver: case, artigo, link relevante]

[ENCERRAMENTO — 1 frase + disponibilidade sem clichê]

[Assinatura]
```

**Regras do email:**
- Assunto específico: "Proposta para [dor específica]" > "Seguimento da nossa conversa"
- Abertura que referencia algo real da call: "Você mencionou que [X]..." ou "Fiquei pensando no que você falou sobre [Y]..."
- Nunca começar com "Foi um prazer falar com você hoje"
- Próximo passo com data ou prazo: "Até [dia], você vai receber..." não "Em breve enviarei"
- Curto: 3-4 parágrafos máximo

### Passo 3 — Escrever a mensagem WhatsApp

Versão reduzida para WhatsApp — máximo 3 linhas:

```
[Nome], boa tarde!

[1 frase referenciando a reunião + confirmação do próximo passo]

[CTA direto: o que o cliente precisa fazer ou esperar]
```

**Regras do WhatsApp:**
- Enviar no mesmo dia da reunião ou manhã do dia seguinte
- Não repetir o email — é um toque rápido, não uma carta
- CTA claro: "Mando a proposta até [dia]" ou "Me confirma se o horário de [data] funciona"

### Passo 4 — Variações

Gerar 2 versões: uma mais formal e uma mais próxima. Deixar o usuário escolher conforme o tom que a conversa teve.

### Passo 5 — Output

Mostrar as duas versões (email + WhatsApp) diretamente no chat, prontas para copiar. Não salvar arquivo — é mensagem imediata.

Ao final, perguntar:
> "Quer ativar a sequência de fechamento de 14 dias pós-envio da proposta? Roda `/sequencia-fechamento` quando a proposta for enviada."

---

## Regras

- Assunto do email é a parte mais importante do follow-up — teste com 3 opções se o usuário quiser
- Nunca fingir que a reunião foi mais positiva do que foi — tom deve refletir o real
- Se o próximo passo não ficou claro na call, o follow-up é o lugar para propor um — não ficar vago
- WhatsApp vai junto ou antes do email — não depois (WhatsApp tem abertura maior)
- Tom segue `_memoria/preferencias.md`
