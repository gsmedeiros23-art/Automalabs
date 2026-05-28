---
name: sequencia-email
description: >
  Cria sequência completa de emails de nutrição a partir de persona, produto e objeções.
  Gera subject, preview text, corpo e CTA de cada email usando framework AIDA, PAS ou StoryBrand.
  Use quando o usuário pedir "cria sequência de email", "sequência de boas-vindas", "emails de nutrição",
  "sequência pra lead magnet", "emails automáticos", ou /sequencia-email.
---

# /sequencia-email — Gerador de Sequência de E-mails

Skill que sai do briefing e entrega a sequência inteira formatada, pronta para configurar no ActiveCampaign ou qualquer ESP.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md`
- **Tom de voz:** `_memoria/preferencias.md`
- **Outputs vão em:** `marketing/email/sequencias/<nome-da-sequencia>/`

---

## Workflow

### Passo 1 — Briefing

Se o usuário não passou as informações, perguntar em ordem:

1. **Qual o tipo de sequência?**
   - Boas-vindas (após lead magnet)
   - Pós-evento / webinar
   - Nutrição contínua
   - Reativação de leads frios
   - Pré-lançamento / oferta

2. **Quem vai receber?** (persona — perfil, dor principal, nível de consciência)
3. **O que é oferecido?** (produto, serviço ou próximo passo que a sequência deve conduzir)
4. **Quais as 3 maiores objeções do público?**
5. **Quantos emails?** (padrão: 6 para boas-vindas, 4 para pós-evento, 3 para reativação)
6. **Qual o CTA final?** (agendar call, comprar, baixar material, acessar área de membros)

Se já existe `_memoria/empresa.md` preenchido, extrair persona e produto de lá — pular as perguntas já respondidas.

### Passo 2 — Escolher o framework

Com base no nível de consciência da persona:

- **AIDA** (Atenção, Interesse, Desejo, Ação) — para públicos que já conhecem o problema mas não a solução
- **PAS** (Problema, Agitação, Solução) — para públicos que sentem a dor mas não a nomeiam
- **StoryBrand** (Herói, Problema, Guia, Plano, CTA) — para campanhas de marca ou lançamento

Informar o framework escolhido e por quê antes de escrever.

### Passo 3 — Escrever os emails

Para cada email da sequência, gerar:

**Estrutura do email:**
```
ASSUNTO: [linha de assunto — até 50 caracteres]
PREVIEW TEXT: [texto de pré-visualização — até 90 caracteres, complementa o assunto]

[Nome],

[ABERTURA — 1 parágrafo que conecta com o momento do lead]

[CORPO — 2-3 parágrafos com o conteúdo principal]

[TRANSIÇÃO — frase que conecta o conteúdo ao CTA]

[CTA — botão ou link com texto claro e acionável]

[Assinatura]
[Nome do remetente, de _memoria/empresa.md]
```

**Regras de escrita por email:**

| Email | Objetivo | Tom |
|---|---|---|
| E1 | Entregar + apresentar | Caloroso, acolhedor |
| E2 | Educar + criar rapport | Próximo, quase informal |
| E3 | Aprofundar o problema | Empático, sem solução ainda |
| E4 | Mostrar transformação | Inspirador, com prova social |
| E5 | Quebrar objeção | Direto, sem rodeios |
| E6 | CTA principal | Confiante, com urgência legítima |

**Regras gerais:**
- Parágrafos de 2-3 linhas máximo
- Uma ideia por email — não tentar resolver tudo de uma vez
- Assunto deve provocar curiosidade ou prometer benefício concreto
- Preview text complementa o assunto, nunca repete
- CTA: uma ação só, texto de ação (verbo imperativo), nunca "clique aqui"
- Não usar jargão de marketing — seguir `_memoria/preferencias.md`
- Nunca abrir com "Espero que esteja bem" ou "Olá, meu nome é"

### Passo 4 — Output

Criar arquivo `sequencia.md` com todos os emails no formato:

```markdown
# Sequência: [Nome]
*Gerada em [data] | Framework: [escolhido] | [N] emails | CTA final: [CTA]*

---

## Email 1 — [Título do email]
**Timing:** Imediato após cadastro
**Assunto:** [assunto]
**Preview:** [preview text]

[corpo completo]

---

## Email 2 — [Título]
**Timing:** Dia 2
...
```

Salvar em `marketing/email/sequencias/<nome-kebab-case>/sequencia.md`.

Perguntar se quer gerar as variações de subject line via `/subject-line` para cada email.

### Passo 5 — Resumo

```
✓ Sequência criada: marketing/email/sequencias/<nome>/sequencia.md

[N] emails gerados:
- E1: [assunto] (dia 0)
- E2: [assunto] (dia X)
...

Framework: [escolhido]
CTA final: [CTA]

Próximos passos:
1. Rodar /subject-line para gerar 10 variações de assunto por email
2. Configurar no ActiveCampaign com triggers e delays
3. Revisar e ajustar tom onde necessário
```

---

## Regras

- Nunca inventar dados, cases ou resultados — só usar o que está em `_memoria/empresa.md`
- Tom segue `_memoria/preferencias.md` estritamente — sem "incrível", "transformador", "revolucionário"
- Uma ação por email. Mais de um CTA dilui a conversão
- Preview text é obrigatório — inbox sem preview text perde abertura
- Se o usuário não souber o número de emails, usar os padrões sugeridos no Passo 1
- Sempre propor rodar `/subject-line` ao terminar
