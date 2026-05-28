---
name: brief-pre-call
description: >
  Pesquisa a empresa do lead antes de uma reunião e gera relatório de contexto com
  posicionamento, possíveis dores do setor e roteiro de perguntas. O vendedor entra
  na call preparado para ter conversa de valor — não de descoberta básica.
  Use quando o usuário pedir "pesquisa sobre o cliente", "brief pré-reunião", "preparar pra call",
  "me fala sobre a empresa X", "roteiro de perguntas", ou /brief-pre-call.
---

# /brief-pre-call — Brief de Pesquisa Pré-Reunião

Gera relatório de contexto antes da call: quem é a empresa, onde está posicionada, possíveis dores do setor e roteiro de perguntas calibrado ao perfil. Vendedor entra preparado.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md` (para calibrar ângulo — o que o vendedor oferece e para quem)
- **Ferramentas:** WebSearch, WebFetch
- **Outputs vão em:** `clientes/<nome>/reunioes/<YYYY-MM-DD>-brief.md`

---

## Workflow

### Passo 1 — Receber o input

O usuário fornece um ou mais de:
- Site da empresa
- Nome da empresa + cidade
- CNPJ
- Nome do contato + LinkedIn
- Qualquer contexto adicional que já tenha

Se só tiver o nome, usar WebSearch para localizar o site e redes sociais antes de continuar.

### Passo 2 — Pesquisa

Usando WebFetch e WebSearch, coletar:

**Sobre a empresa:**
- O que faz (produto/serviço principal)
- Porte estimado (equipe, faturamento se público, clientes mencionados)
- Tempo de mercado e fundadores (se relevante)
- Posicionamento: premium, popular, nicho, volume?
- Canais de presença: site, redes sociais, Google Meu Negócio

**Sobre o mercado:**
- Setor e possíveis sazonalidades
- Concorrentes que aparecem junto na busca
- Tendências ou pressões do setor no momento

**Sobre o contato (se tiver LinkedIn):**
- Cargo e tempo na empresa
- Histórico profissional relevante
- Posts ou artigos recentes que revelem interesse ou dor

**Sinais de dor ou oportunidade:**
- Avaliações negativas no Google ou Reclame Aqui
- Presença digital fraca (site desatualizado, GMB vazio, redes paradas)
- Crescimento recente (contratações, expansão, novo produto)
- Mudança de liderança ou reestruturação

### Passo 3 — Gerar o brief

```markdown
# Brief Pré-Call — [Nome da Empresa]
*Reunião em [data] | Contato: [nome, cargo]*

## Quem é

[2-3 frases sobre o que a empresa faz, para quem e como se posiciona]

## Números e porte

- Fundação: [ano]
- Equipe estimada: [tamanho]
- Canais de venda: [online, loja física, representantes, etc.]
- Presença digital: [forte/média/fraca] — [observação específica]

## O que aparece como dor ou gap

- [Ponto 1 — baseado em evidência encontrada]
- [Ponto 2]
- [Ponto 3]

## Contexto do setor no momento

[1-2 frases sobre o que está acontecendo no setor que pode ser relevante na conversa]

## O que pode conectar com o que oferecemos

[Como o que a empresa ou o Gustavo oferece pode ser relevante para esse lead — conexão honesta]

---

## Roteiro de perguntas

**Para entender a situação atual:**
1. [Pergunta calibrada ao perfil da empresa]
2. [Pergunta]
3. [Pergunta]

**Para entender a dor:**
4. [Pergunta que aprofunda o gap identificado]
5. [Pergunta]

**Para entender a decisão:**
6. [Pergunta sobre processo decisório / prazo / budget]
7. [Pergunta]

**Para encerrar com próximo passo claro:**
8. "Se essa conversa fizer sentido, qual seria o próximo passo que faz mais sentido pra você?"

---

## Cuidados na abordagem

[1-2 observações sobre o que evitar ou ter atenção baseado no que foi pesquisado]
```

### Passo 4 — Resumo rápido

Antes do brief completo, mostrar uma síntese de 3 linhas no chat:

```
[Nome da empresa] — [o que faz em 5-8 palavras]
Gap identificado: [ponto mais relevante encontrado]
Ângulo de entrada: [como iniciar a conversa de forma natural]
```

---

## Regras

- Nunca inventar dados — se não encontrou, deixar o campo em branco com "Não encontrado"
- O brief é contexto, não script — o vendedor usa como referência, não lê em voz alta
- Perguntas do roteiro são abertas e não invasivas — nunca começar com "Vocês já tentaram X?"
- Se o lead é de setor muito técnico ou desconhecido, fazer WebSearch no setor antes das perguntas
- Cuidados na abordagem são obrigatórios — sempre há algo para evitar
- Não mencionar que pesquisou a empresa na call — usar o contexto naturalmente
