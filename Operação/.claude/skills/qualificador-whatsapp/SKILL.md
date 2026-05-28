---
name: qualificador-whatsapp
description: >
  Cria script completo de qualificação de leads via WhatsApp — 5 perguntas adaptativas com
  variações por resposta, critérios de classificação e frases de transição. Pronto para
  configurar no Z-API ou qualquer chatbot de WhatsApp Business.
  Use quando o usuário pedir "qualificação no whatsapp", "chatbot de qualificação",
  "script de perguntas whatsapp", "qualificar lead pelo zap", ou /qualificador-whatsapp.
---

# /qualificador-whatsapp — Script de Qualificação via WhatsApp

Gera o roteiro completo de qualificação: 5 perguntas adaptativas, variações por tipo de resposta, critérios de classificação e frases naturais de transição. Não parece formulário — parece conversa.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md` (produto, preço, público ideal, critérios de cliente bom vs ruim)
- **Tom de voz:** `_memoria/preferencias.md`
- **Outputs vão em:** `marketing/whatsapp/qualificador-<cliente>.md`

---

## Workflow

### Passo 1 — Briefing

Se não estiver claro em `_memoria/empresa.md`, perguntar:

1. **Qual o produto ou serviço que está sendo qualificado?**
2. **Qual o ticket médio ou faixa de investimento?** (define o nível de qualificação necessário)
3. **Quem é o cliente ideal?** (perfil, porte da empresa ou situação do lead)
4. **O que desqualifica um lead?** (ex: budget abaixo de X, região que não atende, problema que não resolve)
5. **Qual o próximo passo para um lead quente?** (agendar call, visita, proposta)

### Passo 2 — Estrutura das 5 perguntas

As 5 perguntas seguem uma progressão BANT adaptada (Budget, Authority, Need, Timeline):

**Pergunta 1 — Abertura e contexto** (Need)
- Objetivo: entender o momento e a situação do lead
- Tom: curioso, sem julgamento
- Exemplo: "Oi, [Nome]! Vi que você baixou [lead magnet]. Me conta — o que te fez buscar esse assunto agora?"

**Pergunta 2 — Profundidade do problema** (Need)
- Objetivo: qualificar a dor — genérica ou real
- Tom: empático
- Exemplo: "Faz quanto tempo você está lidando com isso? Chegou a tentar alguma solução antes?"

**Pergunta 3 — Autoridade e contexto decisório** (Authority)
- Objetivo: entender quem decide e o processo
- Tom: natural, não invasivo
- Exemplo: "Essa decisão seria só sua ou envolve mais alguém?"

**Pergunta 4 — Timeline e urgência** (Timeline)
- Objetivo: separar quem precisa agora de quem está só pesquisando
- Tom: direto
- Exemplo: "Você está olhando para resolver isso nos próximos 30-60 dias ou ainda está na fase de pesquisa?"

**Pergunta 5 — Budget** (Budget)
- Objetivo: qualificar investimento sem espantar
- Tom: prático, sem constrangimento
- Exemplo: "Pra me ajudar a indicar o caminho certo — você já tem uma ideia do investimento que faz sentido pra esse projeto?"

### Passo 3 — Variações por resposta

Para cada pergunta, gerar variações de resposta da IA baseadas no que o lead respondeu:

**Se resposta positiva (lead engajado):**
→ Próxima pergunta com transição de validação
→ Ex: "Faz sentido, obrigado por compartilhar. Mais uma coisa..."

**Se resposta vaga ou evasiva:**
→ Clarificação gentil antes de avançar
→ Ex: "Entendo. Só pra eu entender melhor — [reformulação da pergunta]?"

**Se resposta desqualificadora:**
→ Redirecionar sem constrangimento
→ Ex: "Entendo, nesse caso o que faz mais sentido é [recurso gratuito / conteúdo / retornar quando X]. Posso te mandar algo útil pra esse momento?"

### Passo 4 — Critérios de classificação

Gerar tabela de score por resposta:

| Pergunta | Resposta quente (+2) | Resposta morna (+1) | Resposta fria (0) | Desqualificador (-) |
|---|---|---|---|---|
| P1 | Dor clara e urgente | Interesse vago | Curiosidade casual | Fora do público |
| P2 | Tentou e não resolveu | Nunca tentou resolver | "Só pesquisando" | — |
| P3 | Decisor único | Influenciador | Sem autoridade | — |
| P4 | 30 dias | 60-90 dias | Sem prazo | — |
| P5 | Budget adequado | Budget questionável | Sem budget | Abaixo do mínimo |

**Score final:**
- 7-10 pontos → Quente (próximo passo: agendar call)
- 4-6 pontos → Morno (próximo passo: sequência de nutrição WhatsApp)
- 0-3 pontos → Frio (próximo passo: email de longo prazo)
- Desqualificador → Redirecionar com conteúdo gratuito

### Passo 5 — Output

```markdown
# Qualificador WhatsApp — [Produto/Serviço]
*[Data de criação]*

## Mensagem de abertura
[texto de boas-vindas — enviado quando o lead entra no funil]

---

## P1 — [Título da pergunta]
**Pergunta:** [texto]
**Se resposta positiva:** [resposta da IA]
**Se resposta vaga:** [resposta da IA]
**Se desqualificador:** [resposta da IA]

## P2 — ...
...

---

## Tabela de score
[tabela]

## Mensagens de encaminhamento por classificação

**Quente:**
"[mensagem + link do Cal.com para agendar]"

**Morno:**
"[mensagem + entrada na sequência de nutrição]"

**Frio:**
"[mensagem + recurso gratuito + encerramento sem pressão]"
```

---

## Regras

- Nunca fazer mais de 5 perguntas — cada pergunta extra reduz taxa de resposta
- Perguntas curtas: máximo 2 linhas no WhatsApp
- Nunca perguntar sobre budget antes da P4 — sequência importa
- Frases de transição são obrigatórias — sem elas parece formulário
- Desqualificador não é rejeição — é redirecionamento. O lead frio de hoje pode ser quente em 6 meses
- Tom segue `_memoria/preferencias.md` — não usar linguagem de vendedor se o cliente não usa
