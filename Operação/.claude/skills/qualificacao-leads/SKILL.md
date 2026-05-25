---
name: qualificacao-leads
description: >
  Constrói o framework completo de qualificação de leads: ICP definido,
  critérios BANT adaptados com pesos, modelo de lead scoring (perfil + comportamento),
  roteiro de qualificação e lista de red flags.
  Use quando o usuário pedir "qualificação de leads", "ICP", "lead scoring",
  "critérios de qualificação", "quem é o cliente ideal", ou /qualificacao-leads.
---

Você é um especialista em operações de vendas (Sales Ops) e vai construir o framework de qualificação de leads para a operação comercial do cliente. O objetivo é criar critérios claros de ICP, modelo de scoring e processo de qualificação que a equipe possa aplicar no dia a dia.

## Passo 1 — Carregar Contexto
Verifique se existe o arquivo `cliente-contexto.md`. Se existir, leia-o e use as informações para personalizar as perguntas e o framework. Mencione ao usuário o que já foi identificado no diagnóstico anterior.

## Passo 2 — Entrevista Interativa

Apresente-se assim:
> "Agora vamos construir o framework de qualificação de leads. O objetivo é definir quem é o cliente ideal, quais critérios indicam que um lead vale o tempo da equipe, e como priorizar o pipeline. Vou te fazer algumas perguntas."

### Bloco 1 — Perfil do Cliente Ideal (ICP)
1. Quem é o cliente que mais se beneficia do produto/serviço? (segmento, porte, cargo do decisor)
2. Qual o perfil dos 3 melhores clientes que vocês já tiveram? O que eles tinham em comum?
3. Existem segmentos ou perfis que vocês já aprenderam que NÃO funcionam bem? Por quê?
4. Qual o porte mínimo de empresa para que o negócio faça sentido financeiramente?
5. Existem critérios geográficos, tecnológicos ou setoriais que definem o ICP?

### Bloco 2 — Critérios de Qualificação (BANT ou customizado)
6. **Budget:** O cliente precisa ter budget definido ou vocês costumam criar o budget junto com ele?
7. **Authority:** Quem costuma ser o decisor final? (cargo, nível hierárquico) Existe comitê de compra?
8. **Need:** Qual é a dor mínima que um lead precisa ter para fazer sentido avançar?
9. **Timeline:** Existe uma urgência mínima para o lead ser considerado qualificado?
10. Existe algum critério técnico ou operacional que um lead PRECISA ter para comprar? (ex: usar determinado sistema, ter equipe mínima, etc.)

### Bloco 3 — Sinais de Interesse e Engajamento
11. Quais comportamentos indicam que um lead está genuinamente interessado? (abriu email, pediu demo, visitou página de preços, etc.)
12. Existe algum "gatilho de compra" recorrente? (mudança de cargo, crescimento da equipe, fim de contrato com concorrente, etc.)
13. Quais perguntas um lead qualificado costuma fazer nas primeiras interações?

### Bloco 4 — Desqualificação
14. Quais são os sinais claros de que um lead não vai fechar? (red flags)
15. Existe algum tipo de lead que consome muito tempo mas raramente fecha? Como identificar isso mais cedo?

### Bloco 5 — Processo Atual de Qualificação
16. Hoje existe algum processo de qualificação? Como funciona na prática?
17. Quem faz a qualificação? (SDR, o próprio vendedor, marketing?)
18. Em qual momento do funil a qualificação acontece?
19. Qual o maior problema do processo de qualificação atual?

## Passo 3 — Confirmar e Gerar Documento

Resuma os critérios identificados e confirme:
> "Com base no que você me disse, vou montar um framework com os seguintes elementos: ICP definido, critérios de qualificação em [X dimensões], modelo de scoring e roteiro de qualificação. Isso cobre o que você precisa ou tem algum ajuste?"

## Passo 4 — Gerar Documento Entregável

---

# Framework de Qualificação de Leads — [Nome da Empresa]
**Data:** [data] | **Versão:** 1.0

---

## 1. Perfil do Cliente Ideal (ICP)

### 1.1 Perfil Firmográfico (quem é a empresa)

| Critério | Descrição |
|---|---|
| Segmento(s) alvo | |
| Porte (faturamento) | |
| Porte (número de funcionários) | |
| Localização geográfica | |
| Maturidade tecnológica | |
| Outros critérios relevantes | |

### 1.2 Perfil do Decisor (quem compra)

| Critério | Descrição |
|---|---|
| Cargo principal | |
| Outros influenciadores | |
| Nível de senioridade | |
| Principal dor que resolve | |
| Motivação principal de compra | |

### 1.3 Perfil Comportamental (sinais de fit)

**Gatilhos de compra comuns:**
- [Gatilho 1]
- [Gatilho 2]
- [Gatilho 3]

**Clientes que NÃO são ICP:**
- [Perfil a evitar 1 + motivo]
- [Perfil a evitar 2 + motivo]

---

## 2. Critérios de Qualificação

### Framework BANT Adaptado

| Critério | Peso | Pergunta-chave | O que qualifica | O que desqualifica |
|---|---|---|---|---|
| **Budget** | [%] | [pergunta] | [resposta positiva] | [red flag] |
| **Authority** | [%] | [pergunta] | [resposta positiva] | [red flag] |
| **Need** | [%] | [pergunta] | [resposta positiva] | [red flag] |
| **Timeline** | [%] | [pergunta] | [resposta positiva] | [red flag] |
| **[Critério extra]** | [%] | [pergunta] | [resposta positiva] | [red flag] |

*Ajuste os pesos conforme a realidade do negócio. A soma deve ser 100%.*

---

## 3. Modelo de Lead Scoring

### 3.1 Scoring por Perfil (fit com ICP)

| Dimensão | Critério | Pontos |
|---|---|---|
| Segmento | Segmento primário | +20 |
| Segmento | Segmento secundário | +10 |
| Segmento | Fora do ICP | -20 |
| Porte | Porte ideal | +20 |
| Porte | Porte mínimo viável | +5 |
| Porte | Abaixo do mínimo | -30 |
| Decisor | Decisor final mapeado | +20 |
| Decisor | Influenciador mapeado | +10 |
| Decisor | Sem acesso ao decisor | -10 |
| Dor | Dor principal confirmada | +25 |
| Dor | Dor secundária | +10 |
| Dor | Sem dor identificada | -20 |

### 3.2 Scoring por Comportamento (engajamento)

| Comportamento | Pontos |
|---|---|
| Solicitou proposta/demo | +30 |
| Respondeu mensagem/email | +15 |
| Visitou página de preços | +20 |
| Abriu emails (3+ vezes) | +10 |
| Compareceu a reunião | +25 |
| Deu no-show sem reagendar | -15 |
| Não responde há 7+ dias | -10 |
| Pediu para retornar em prazo longo | -20 |

### 3.3 Classificação de Leads

| Score Total | Classificação | Ação Recomendada |
|---|---|---|
| 80-100+ | 🔥 Hot Lead | Prioridade máxima — contato em até 24h |
| 50-79 | ✅ Lead Qualificado | Cadência ativa — contato em até 48h |
| 20-49 | 🌡️ Lead Morno | Nurturing — cadência de baixa frequência |
| Abaixo de 20 | ❄️ Fora do ICP | Arquivar ou redirecionar |

---

## 4. Roteiro de Qualificação (Script de Perguntas)

### Abertura Recomendada
[Script de 3-4 linhas para abrir a conversa de qualificação de forma natural]

### Perguntas de Qualificação (em ordem recomendada)

**1ª — Mapear Situação:**
> "[Pergunta de situação]"

**2ª — Identificar Dor:**
> "[Pergunta de problema]"

**3ª — Avaliar Urgência:**
> "[Pergunta de timeline]"

**4ª — Validar Budget/Decisão:**
> "[Pergunta de budget/authority]"

**5ª — Confirmar Fit:**
> "[Pergunta de confirmação final]"

### Critério de Avanço no Funil
Para mover um lead de **Prospecto → Oportunidade Qualificada**, ele deve atender:
- [ ] Dor confirmada e alinhada com nossa solução
- [ ] Budget existente ou processo para aprovação iniciado
- [ ] Decisor ou influenciador mapeado
- [ ] Timeline definida (mesmo que seja "nos próximos 6 meses")
- [ ] Score mínimo de [X] pontos

---

## 5. Red Flags — Quando Desqualificar

Desqualifique (remova do pipeline ativo) quando:

1. **[Red flag 1]** — [consequência/motivo]
2. **[Red flag 2]** — [consequência/motivo]
3. **[Red flag 3]** — [consequência/motivo]
4. **Sem resposta por [X] dias** após [Y] tentativas
5. **Decisor não acessível** e sem perspectiva de acesso

> *Lead desqualificado ≠ lead perdido. Registre o motivo no CRM e coloque em nurturing de longo prazo.*

---

## 6. Processo de Qualificação — Fluxo Operacional

```
[Lead entra no funil]
         ↓
[Scoring automático por perfil — CRM/planilha]
         ↓
[SDR ou vendedor faz contato de qualificação]
         ↓
[Aplica perguntas BANT + atualiza score]
         ↓
     Score ≥ [X]?
    ↙            ↘
   SIM            NÃO
    ↓               ↓
[Avança para    [Desqualifica ou
Oportunidade]    coloca em nurturing]
    ↓
[Agendamento com closer / próxima etapa]
```

---

## 7. Implementação

### Semana 1 — Setup
- [ ] Atualizar campos do CRM com critérios de scoring
- [ ] Treinar equipe nas perguntas de qualificação
- [ ] Criar template de registro de qualificação

### Semana 2-4 — Calibração
- [ ] Aplicar framework nos leads atuais
- [ ] Revisão semanal: o scoring está prevendo conversão corretamente?
- [ ] Ajustar pesos conforme feedback da equipe

### Métricas para Acompanhar
- % de leads qualificados sobre total de leads recebidos
- Taxa de conversão de lead qualificado para cliente
- Tempo médio de qualificação (primeiro contato → classificação)
- Acurácia do scoring (leads Hot → % que fecharam)

---
*Framework desenvolvido em [data]. Revisar critérios a cada 90 dias ou quando houver mudança significativa no ICP.*

---

**Passo 5 — Atualizar contexto**
Adicione ao arquivo `cliente-contexto.md`:

```markdown
## Framework de Qualificação
- **ICP principal:** [descrição resumida]
- **Critérios BANT adaptados:** [lista]
- **Score mínimo para qualificação:** [X]
- **Principais red flags:** [lista]
- [x] Qualificação de Leads concluída
```

Ao final, informe:
> "Framework de qualificação pronto. O próximo passo é o **Playbook Comercial** (`/playbook-comercial`), que vai consolidar tudo isso em um guia operacional completo para a equipe de vendas."
