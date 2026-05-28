---
name: lead-scorer
description: >
  Calcula o score de um lead com base nas respostas da qualificação (WhatsApp ou formulário)
  e entrega classificação (quente/morno/frio), resumo do perfil e próximo passo recomendado.
  Use quando o usuário pedir "classificar esse lead", "score do lead", "esse lead é bom?",
  "qualificou ou não?", colar respostas de qualificação, ou /lead-scorer.
---

# /lead-scorer — Classificador e Scorer de Leads

Recebe as respostas brutas da qualificação e entrega: score calculado, classificação, resumo do perfil em 3 linhas e próximo passo recomendado. Pronto para o vendedor agir.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md` (critérios de cliente ideal, ticket, serviços)
- **Script de qualificação:** `marketing/whatsapp/qualificador-<cliente>.md` (se existir, usar os critérios de score dele)

---

## Workflow

### Passo 1 — Receber as respostas

O usuário cola as respostas da qualificação no chat. Pode ser:
- Transcrição do WhatsApp
- Respostas de formulário
- Resumo manual ("disse que tem budget de X, prazo de Y, é o decisor")

Se não houver critérios de score configurados, usar o framework BANT padrão do `/qualificador-whatsapp`.

### Passo 2 — Calcular o score

Pontuar cada dimensão de 0 a 2:

| Dimensão | 2 pts | 1 pt | 0 pt |
|---|---|---|---|
| **Necessidade** | Dor clara, urgente, específica | Interesse geral, dor vaga | Curiosidade casual ou irrelevante |
| **Autoridade** | Decisor único | Influenciador com acesso ao decisor | Sem autoridade ou contato com decisor |
| **Budget** | Adequado ao produto | Questionável, mas possível | Abaixo do mínimo ou não sabe |
| **Timeline** | Dentro de 30 dias | 30-90 dias | Sem prazo ou "mais pra frente" |
| **Fit** | Perfil exato do cliente ideal | Perfil próximo | Fora do público |

Score total: 0-10 pontos.

### Passo 3 — Classificar e recomendar

**8-10 pontos → QUENTE 🔥**
- Próximo passo: agendar call o mais rápido possível
- Responsável: vendedor entra em contato em até 2h
- Ação: enviar link do Cal.com + mensagem personalizada

**5-7 pontos → MORNO 🌡️**
- Próximo passo: entrar em sequência de nutrição WhatsApp (3-5 mensagens em 2 semanas)
- Ação: marcar para follow-up em 14 dias se não houver movimento
- Opcional: oferecer conteúdo gratuito para aprofundar relação

**0-4 pontos → FRIO ❄️**
- Próximo passo: entrar em sequência de email de longo prazo (nutrição passiva)
- Não investir tempo de vendedor agora
- Revisar em 60-90 dias

**Desqualificado ✗**
- Budget inviável, fora do público ou sem dor real
- Próximo passo: redirecionar para recurso gratuito + encerrar sem pressão
- Não entrar em nenhuma sequência de vendas

### Passo 4 — Resumo do perfil

Gerar um resumo de 3 linhas para o vendedor:

```
LEAD: [Nome]
SCORE: [X/10] — [QUENTE/MORNO/FRIO]

Perfil: [1 frase sobre quem é e o que faz]
Dor: [1 frase sobre o problema principal e a urgência]
Ponto de atenção: [1 coisa que precisa de cuidado na abordagem — objeção, dúvida, contexto]

PRÓXIMO PASSO: [ação concreta com prazo]
```

### Passo 5 — Output

Entregar o resumo diretamente no chat. Não salvar arquivo — é entregável imediato para o vendedor agir.

Se houver CRM configurado, indicar em qual etapa do pipeline colocar o lead:
- Quente → "Qualificado"
- Morno → "Nutrição"
- Frio → "Longo prazo"
- Desqualificado → "Descartado"

---

## Regras

- Nunca classificar sem analisar todas as dimensões — score parcial é melhor do que pular dimensões
- Se faltar informação crítica (ex: não perguntou sobre budget), indicar lacuna e sugerir pergunta de follow-up
- Resumo do perfil deve ser útil para o vendedor que nunca viu esse lead — sem jargão interno
- Não inflar score para agradar — lead morno tratado como quente queima tempo do vendedor
- Ponto de atenção é obrigatório — sempre há algo para ficar de olho na abordagem
