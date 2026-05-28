---
name: sequencia-fechamento
description: >
  Cria sequência multicanal de fechamento de 14 dias após o envio da proposta — 7 mensagens
  prontas (email + WhatsApp intercalados) com ângulos diferentes por dia. Mantém o momentum
  sem pressionar.
  Use quando o usuário pedir "sequência pós-proposta", "follow-up de fechamento", "mensagens depois
  da proposta", "sequência de 14 dias", ou /sequencia-fechamento.
---

# /sequencia-fechamento — Sequência Multicanal de Fechamento

7 mensagens em 14 dias — email e WhatsApp intercalados. Cada mensagem com ângulo diferente, cada canal com tom adequado. Automatizado, mas nunca parece automático.

## Dependências

- **Contexto da proposta:** `clientes/<nome>/propostas/<data>-proposta.html` ou brief manual
- **Análise da reunião:** `clientes/<nome>/reunioes/<data>-analise.md` (se existir — para personalizar)
- **Tom de voz:** `_memoria/preferencias.md`
- **Outputs vão em:** `clientes/<nome>/fechamento/<YYYY-MM-DD>-sequencia.md`

---

## Workflow

### Passo 1 — Briefing

Se não houver análise de reunião e proposta disponíveis, perguntar:

1. **Nome do lead e empresa**
2. **Qual a principal dor que a proposta resolve?**
3. **Qual foi a maior objeção levantada na reunião?** (preenche o Dia 5)
4. **Tem algum case do mesmo setor disponível?** (preenche o Dia 3)
5. **Qual o prazo real de validade da proposta?** (preenche a urgência do Dia 7)

### Passo 2 — Sequência base

| Dia | Canal | Ângulo | Objetivo |
|-----|-------|--------|----------|
| 0 | Email | Proposta enviada | Entregar + apresentar |
| 1 | WhatsApp | Confirmação rápida | Checar se recebeu e abrir canal |
| 3 | Email | Case de cliente similar | Prova social do resultado |
| 5 | WhatsApp | Quebra da objeção principal | Endereçar a dúvida não dita |
| 7 | Email | Urgência ou bônus legítimo | Criar razão para decidir agora |
| 10 | WhatsApp | Último contato pessoal | Verificar status sem pressão |
| 14 | Email | Encerramento | Preservar relacionamento |

### Passo 3 — Escrever cada mensagem

**Dia 0 — Email de envio da proposta**
- Assunto específico referenciando a dor do cliente
- 3-4 parágrafos: contexto, o que vai encontrar na proposta, próximo passo, validade
- Tom: confiante, próximo

**Dia 1 — WhatsApp de confirmação**
- 2 linhas máximo
- Confirma o envio + abre para dúvidas
- Tom: leve, sem pressão

**Dia 3 — Email com case**
- Case de cliente do mesmo setor ou com dor similar
- Estrutura: contexto do case → resultado → conexão com a situação do lead
- Tom: narrativo, concreto com números se possível

**Dia 5 — WhatsApp com quebra de objeção**
- Endereçar a objeção principal da reunião de forma natural
- Não parece "sei que você acha caro" — parece uma reflexão que surgiu
- Tom: direto, sem rodeios, sem script

**Dia 7 — Email com urgência ou bônus**
- Urgência ou bônus que seja real — prazo de validade, disponibilidade de agenda, condição especial
- Se não houver urgência real, usar valor agregado (algo extra incluído se fechar até X)
- Tom: concreto, prático

**Dia 10 — WhatsApp pessoal**
- Última mensagem antes do encerramento
- Tom: genuíno, sem drama
- Pergunta direta: "Ainda está avaliando ou já fechou outra solução?"
- Não tem CTA de venda — é checar status

**Dia 14 — Email de encerramento**
- Não tentar vender — encerrar o ciclo com dignidade
- Mensagem curta: informa que está encerrando o acompanhamento, deixa porta aberta
- Tom: respeitoso, sem mágoa

### Passo 4 — Output

```markdown
# Sequência de Fechamento — [Nome do Lead]
*Proposta enviada em [data] | Válida até [data]*

---

## Dia 0 — Email de envio
**Assunto:** [assunto]
**Preview:** [preview]

[corpo]

---

## Dia 1 — WhatsApp
[mensagem]

---

## Dia 3 — Email — Case
**Assunto:** [assunto]
[corpo]

---

[...continua para todos os dias]
```

---

## Regras

- Urgência do Dia 7 só se for real — urgência falsa detectada pelo lead destrói a confiança construída
- WhatsApp nunca passa de 3 linhas — canal de texto curto
- Dia 14 é o mais importante para relacionamento de longo prazo — encerrar bem abre a porta para o futuro
- Se o lead responder em qualquer ponto da sequência, pausar os próximos envios automáticos — a conversa vira manual
- Case do Dia 3: se não tiver case pronto, rodar `/case-de-sucesso` primeiro
- Tom de cada mensagem segue `_memoria/preferencias.md`
