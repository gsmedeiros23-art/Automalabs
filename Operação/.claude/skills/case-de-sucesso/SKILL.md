---
name: case-de-sucesso
description: >
  Transforma anotações brutas de um projeto bem-sucedido em case estruturado no formato STAR.
  Gera versão longa (PDF/blog) e versão curta (citação para anúncio e WhatsApp).
  Use quando o usuário pedir "case do cliente X", "transformar esse resultado em case",
  "escrever o case de sucesso", "gerar prova social", ou /case-de-sucesso.
---

# /case-de-sucesso — Gerador de Case de Sucesso (formato STAR)

Um briefing de 5 minutos vira dois entregáveis: versão longa para PDF e blog, versão curta para anúncio e WhatsApp de fechamento.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md`
- **Tom de voz:** `_memoria/preferencias.md`
- **Outputs vão em:** `marketing/cases/<nome-cliente>-<YYYY-MM-DD>/`

---

## Workflow

### Passo 1 — Briefing do case

Perguntar ao usuário (ou extrair de anotações existentes):

1. **Nome do cliente** (empresa ou nome próprio — confirmar se pode ser citado com nome real)
2. **Setor / nicho**
3. **Situação antes:** qual era o problema, a dificuldade ou o momento em que o cliente estava?
4. **O que foi feito:** qual foi o serviço entregue e como aconteceu (resumo do processo)?
5. **Resultado:** o que mudou após o projeto? Tem números? (ex: "aumentou X%", "economizou R$Y", "saiu de A para B")
6. **Depoimento:** o cliente disse algo marcante? Pode ser usado?
7. **Tempo de execução:** quanto tempo levou o projeto?

Se não houver números concretos, trabalhar com resultados qualitativos — desde que reais.

### Passo 2 — Versão longa (STAR)

**S — Situation (Situação)**
2-3 parágrafos descrevendo:
- Quem é o cliente e o que faz
- O contexto em que o projeto aconteceu
- O que estava em jogo

**T — Task (Tarefa/Desafio)**
1-2 parágrafos sobre:
- Qual era o problema ou objetivo central
- Por que era difícil ou urgente
- O que o cliente tentou antes (se aplicável)

**A — Action (Ação)**
2-3 parágrafos descrevendo:
- O que foi feito e como
- As decisões-chave do processo
- Sem jargão técnico — focar no que o cliente vivenciou

**R — Result (Resultado)**
1-2 parágrafos com:
- Os resultados concretos (números sempre que possível)
- A transformação na vida ou no negócio do cliente
- Depoimento do cliente (se autorizado)

**Estrutura do arquivo:**

```markdown
# [Título chamativo — resultado em destaque]
*[Setor] | [Duração do projeto]*

## Situação
[texto]

## O desafio
[texto]

## O que fizemos
[texto]

## Resultado
[texto]

> "[Depoimento do cliente]"
> — [Nome, cargo ou "cliente desde X"]
```

### Passo 3 — Versão curta (citação)

Gerar 3 variações de citação curta para uso em:
- Anúncio Meta Ads (máx 2 linhas)
- WhatsApp de fechamento (máx 2 linhas)
- Legenda de post no Instagram

Formato:
```
Citação 1 (foco no resultado):
"[Resultado concreto em 1-2 frases]"
— [Nome ou "cliente do setor X"]

Citação 2 (foco na transformação):
"[Antes X, agora Y]"
— [atribuição]

Citação 3 (foco na experiência):
"[Como foi trabalhar com a empresa]"
— [atribuição]
```

### Passo 4 — Output e organização

Criar em `marketing/cases/<nome-kebab-case>-<YYYY-MM-DD>/`:
- `case-longo.md` — versão completa para blog/PDF
- `citacoes.md` — 3 variações curtas para uso em outros canais
- `resumo-setor.md` — versão de 1 parágrafo para uso em propostas de clientes do mesmo setor

```
✓ Case gerado: marketing/cases/<pasta>/

Arquivos:
- case-longo.md (blog/PDF)
- citacoes.md (anúncios/WhatsApp)
- resumo-setor.md (propostas)

Sugestão: rodar /publicar-tema com esse case para gerar versão de blog + carrossel de redes sociais.
```

---

## Regras

- Confirmar sempre se o cliente autorizou o uso do nome antes de publicar
- Nunca inventar resultados — se não tiver número, usar "qualitativo" e deixar claro
- STAR não é um template rígido — a narrativa deve fluir naturalmente, não parecer formulário
- Citações curtas são as mais usadas — investir na qualidade delas
- Tom segue `_memoria/preferencias.md` — sem "case incrível de transformação"
- O setor do case é o campo mais importante para `/prova-social-personalizada` funcionar — sempre registrar
