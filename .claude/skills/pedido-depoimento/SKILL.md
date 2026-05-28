---
name: pedido-depoimento
description: >
  Gera mensagem personalizada para solicitar depoimento de um cliente após a entrega do projeto.
  Referencia o resultado concreto daquele cliente — não parece pesquisa de satisfação automática.
  Use quando o usuário pedir "pedir depoimento pro cliente", "solicitar avaliação", "mensagem de
  depoimento", "como peço pro cliente dar um depoimento", ou /pedido-depoimento.
---

# /pedido-depoimento — Solicitação de Depoimento Pós-Entrega

Gera a mensagem de pedido de depoimento no momento certo — 7 dias após a entrega, quando a satisfação está no pico. Referencia o resultado específico do cliente, não parece automação genérica.

## Dependências

- **Tom de voz:** `_memoria/preferencias.md`
- **Contexto do projeto:** briefing manual ou `clientes/<nome>/` se existir
- **Output:** direto no chat — mensagem pronta para copiar e enviar

---

## Workflow

### Passo 1 — Receber o contexto

Perguntar ou extrair:

1. **Nome do cliente** (como chama de jeito próximo?)
2. **O que foi entregue?** (projeto, serviço, resultado)
3. **Qual o resultado mais concreto?** (o que mudou para o cliente após o projeto)
4. **Como o relacionamento é?** (próximo e informal, ou mais formal e profissional)
5. **Onde quer o depoimento?** (Google, Instagram, LinkedIn, vídeo curto, texto para usar em proposta)

### Passo 2 — Escrever a mensagem

**Para WhatsApp** (canal ideal — mais resposta):

```
[Nome], tudo bem?

[1 frase referenciando o resultado ou o momento — algo específico do projeto]

[1 frase pedindo o depoimento de forma natural — sem drama, sem bajulação]

[1 linha com instrução clara: como, onde e quanto tempo leva]
```

**Regras:**
- Máximo 4 linhas
- Referencia algo específico do projeto — nunca genérico
- Tom proporcional à proximidade do relacionamento
- Não começar com "Espero que esteja aproveitando o resultado"
- Não pedir "avaliação de 5 estrelas" — pedir depoimento honesto

**Para email** (se o cliente preferir):

```
Assunto: [algo específico — não "Pedido de depoimento"]

[Nome],

[1-2 frases sobre o resultado do projeto — mostra que lembra do contexto]

[1-2 frases pedindo o depoimento — por que é útil e o que pode ser dito]

[instrução clara: link do Google, resposta ao email, ou forma preferida]

[encerramento simples]
```

### Passo 3 — Variações por destino

**Depoimento para Google Meu Negócio:**
- Incluir link direto para a página de avaliações
- Frase: "Leva menos de 2 minutos" — reduz a resistência

**Depoimento para Instagram:**
- Pedir texto curto + foto do resultado (se aplicável ao nicho)
- Avisar que vai usar com o perfil marcado

**Depoimento para LinkedIn:**
- Tom mais formal
- Pode ser uma recomendação escrita no perfil

**Depoimento para vídeo curto:**
- Dar opções: gravação de 30 segundos no celular, ou texto que a empresa lê
- Não exigir produção — simplicidade aumenta adesão

**Depoimento para proposta:**
- Pedir texto livre — vai ser editado e usado com autorização

### Passo 4 — Output

Entregar as versões diretamente no chat (WhatsApp + email). Não salvar arquivo.

Ao final:
> "Se o cliente responder, use `/case-de-sucesso` para transformar o depoimento em case estruturado."

---

## Regras

- Timing é tudo — 7 dias após a entrega é o ideal. Depois de 30 dias, a empolgação cai
- Nunca pedir depoimento antes de confirmar que o cliente ficou satisfeito
- Tornar fácil: link direto, instrução de quanto tempo leva, opção de texto simples
- Se o cliente hesitar, não insistir — um depoimento forçado é pior do que nenhum
- Tom segue `_memoria/preferencias.md` estritamente — pedido de depoimento tem o mesmo tom que qualquer outra comunicação da marca
