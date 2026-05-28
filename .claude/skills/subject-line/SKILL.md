---
name: subject-line
description: >
  Gera 10 variações de subject line com preview text para um email ou sequência completa.
  Inclui previsão de abertura relativa e recomendação de qual testar primeiro no A/B.
  Use quando o usuário pedir "variações de assunto", "subject line", "testar assunto de email",
  "A/B de subject", "10 versões do assunto", ou /subject-line.
---

# /subject-line — Gerador de Subject Lines A/B

Gera 10 variações de assunto + preview text por email, organizadas por categoria de gatilho e com recomendação de qual par testar primeiro.

## Dependências

- **Tom de voz:** `_memoria/preferencias.md`
- **Contexto do negócio:** `_memoria/empresa.md`
- **Input:** email completo (corpo) ou só o tema/objetivo do email

---

## Workflow

### Passo 1 — Receber o input

O usuário pode fornecer:
- O corpo completo do email (melhor)
- Só o tema e objetivo do email ("email de boas-vindas que entrega o e-book sobre X")
- Um assunto existente para melhorar

Se vier de `/sequencia-email`, processar cada email da sequência um a um.

### Passo 2 — Gerar as 10 variações

Produzir uma variação por categoria de gatilho. Para cada uma, gerar o **assunto** (até 50 caracteres) e o **preview text** (até 90 caracteres, complementar — nunca repetir o assunto):

| # | Categoria | Mecanismo psicológico |
|---|---|---|
| 1 | Curiosidade | Pergunta aberta que o corpo responde |
| 2 | Benefício direto | Promessa clara e específica |
| 3 | Urgência/escassez | Tempo ou disponibilidade limitada (só se for verdade) |
| 4 | Prova social | Número, resultado ou referência de terceiros |
| 5 | Pessoal/íntimo | Parece enviado de pessoa pra pessoa |
| 6 | Provocação | Contrapõe crença comum do público |
| 7 | Especificidade | Número ou dado concreto no assunto |
| 8 | Medo/consequência | O custo de não agir |
| 9 | Novidade | Algo que o lead ainda não sabe |
| 10 | Simples/direto | Uma frase curta e objetiva, sem truque |

**Restrições:**
- Máximo 50 caracteres no assunto (mobile exibe ~40)
- Sem "RE:", "FWD:", caps lock excessivo ou pontuação repetida (!!! ???)
- Sem palavras de spam: grátis, promoção, ganhe dinheiro, clique agora
- Preview text nunca começa com "Olá" ou repete o assunto

### Passo 3 — Recomendar qual testar primeiro

Escolher as 2 melhores para o teste A/B com base em:
- Compatibilidade com o tom de `_memoria/preferencias.md`
- Relevância para o momento da sequência (E1 diferente de E5)
- Contraste entre as duas (não testar duas do mesmo gatilho)

Formato da recomendação:
```
🧪 Recomendo testar:
A → variação #X (curiosidade) — motivo
B → variação #Y (benefício) — motivo

Hipótese: se o público for [perfil], A deve ganhar porque [razão].
```

### Passo 4 — Output

```markdown
# Subject Lines — [Nome do email]

| # | Tipo | Assunto | Preview text |
|---|------|---------|--------------|
| 1 | Curiosidade | ... | ... |
| 2 | Benefício | ... | ... |
...

## Recomendação de teste A/B
A → #X — [motivo]
B → #Y — [motivo]

Hipótese: [hipótese]
```

Se for para uma sequência completa, repetir o bloco para cada email separado por `---`.

Salvar em `marketing/email/sequencias/<nome>/subject-lines.md` ou ao lado do arquivo do email.

---

## Regras

- Nunca prometer resultado que o email não entrega — alinhamento assunto/corpo é crítico para não aumentar descadastro
- Urgência e escassez só se forem reais — gatilho falso destrói confiança
- Testar A/B requer volume mínimo: menos de 200 contatos, a variação vencedora é ruído estatístico — avisar o usuário
- Tom segue `_memoria/preferencias.md` — não usar linguagem de guru se o cliente não usa
- Preview text é obrigatório. ESPs que não mostram preview text ainda são a maioria no mobile
