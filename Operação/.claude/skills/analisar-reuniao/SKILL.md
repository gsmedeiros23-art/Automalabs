---
name: analisar-reuniao
description: >
  Analisa a transcrição de uma reunião de vendas e extrai: dores levantadas, objeções explícitas
  e implícitas, nível de interesse com score, próximo passo recomendado e trechos-chave para
  usar na proposta. A call inteira vira dado estruturado em minutos.
  Use quando o usuário colar uma transcrição, pedir "analisa essa reunião", "o que o cliente disse",
  "extrai os pontos da call", "resumo da reunião", ou /analisar-reuniao.
---

# /analisar-reuniao — Análise de Transcrição de Reunião de Vendas

Recebe a transcrição bruta (do Whisper, Otter, Fireflies ou digitada) e entrega análise estruturada com tudo que importa para o fechamento.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md` (produto/serviço, critérios de cliente ideal)
- **Input:** transcrição da reunião (texto) — copiada diretamente no chat ou como arquivo
- **Outputs vão em:** `clientes/<nome>/reunioes/<YYYY-MM-DD>-analise.md`

---

## Workflow

### Passo 1 — Receber a transcrição

O usuário cola a transcrição ou indica o arquivo. Se a transcrição for muito longa (>3000 palavras), pedir para dividir em partes ou indicar os trechos mais relevantes.

Se vier de transcrição automática (Whisper, etc.): aceitar imperfeições gramaticais — o conteúdo importa, não a gramática.

### Passo 2 — Identificar os participantes

Extrair quem falou o quê (se a transcrição diferenciar):
- Quem é da empresa (vendedor)
- Quem é o lead (nome, cargo se mencionado)
- Se houver mais de um lead na call, identificar quem pareceu mais decisor

### Passo 3 — Extrair os dados

**Dores levantadas pelo lead:**
Listar cada problema ou dificuldade mencionada. Classificar por intensidade:
- Alta: mencionou espontaneamente, com emoção ou múltiplas vezes
- Média: respondeu à pergunta com profundidade
- Baixa: mencionou de passagem

**Objeções:**
- Objeções explícitas: "Mas o preço é alto", "Não sei se tenho tempo para isso"
- Objeções implícitas: hesitações, desvios de assunto, perguntas que revelam dúvida ("E se não funcionar?")
- Classificar cada uma como: preço / prazo / confiança / prioridade / autoridade

**Nível de interesse:**
Score de 1-10 baseado em:
- Engajamento nas respostas (expansivo vs monossilábico)
- Perguntas feitas pelo lead (quantidade e profundidade)
- Menção a próximos passos pelo próprio lead
- Tom geral (animado, neutro, desconfiante)

**Próximo passo combinado:**
O que ficou acordado ao final da call. Se nada ficou claro, indicar isso como alerta.

**Trechos-chave para a proposta:**
Citações literais ou parafraseadas do lead que devem aparecer na proposta para mostrar que o vendedor ouviu:
- Dor principal em palavras do próprio lead
- O resultado que ele quer alcançar
- Qualquer critério de decisão mencionado

### Passo 4 — Output

```markdown
# Análise da Reunião — [Nome do Lead/Empresa]
*[Data] | Duração estimada: [X min] | Score de interesse: [X/10]*

## Participantes

- **Lead:** [Nome, cargo se mencionado]
- **Vendedor:** [Nome]

---

## Dores identificadas

| Dor | Intensidade | Trecho da call |
|-----|-------------|----------------|
| [dor 1] | Alta | "[citação aproximada]" |
| [dor 2] | Média | "[citação aproximada]" |
| [dor 3] | Baixa | "[citação aproximada]" |

## Objeções

| Objeção | Tipo | Explícita ou implícita |
|---------|------|------------------------|
| [objeção 1] | Preço | Explícita |
| [objeção 2] | Confiança | Implícita |

## Score de interesse: [X/10]

[Justificativa em 2-3 frases — o que elevou e o que puxou o score pra baixo]

## Próximo passo combinado

[O que ficou acordado — ou alerta de que nada ficou claro]

## Trechos-chave para a proposta

> "[Citação literal ou aproximada — dor principal]"

> "[Citação sobre o resultado que quer]"

> "[Critério de decisão ou expectativa mencionada]"

---

## Alertas

- [Qualquer sinal de risco: objeção não endereçada, prazo irreal, decisor ausente, etc.]

## Recomendação pós-call

[O que fazer nas próximas 24h: proposta, follow-up, pesquisa adicional, envolver outra pessoa]
```

---

## Regras

- Nunca inventar citações — usar aspas só para o que realmente foi dito (ou próximo disso)
- Se a transcrição for imprecisa, sinalizar com "(transcrição imprecisa)" no trecho
- Score de interesse é opinativo — justificar sempre
- Objeções implícitas são tão importantes quanto as explícitas — não ignorar hesitações
- Se nenhum próximo passo foi combinado na call, colocar como alerta crítico — é o principal risco de perder o deal
- Trechos-chave para a proposta são obrigatórios — é o que diferencia proposta personalizada de template
