---
name: proposta-comercial
description: >
  Gera proposta comercial personalizada em HTML/PDF a partir do brief da reunião ou análise
  da transcrição. Inclui escopo, entregáveis por fase, prazo e investimento — com as dores
  e palavras do próprio cliente. Não é template com nome trocado.
  Use quando o usuário pedir "gera a proposta", "proposta pro cliente X", "montar proposta",
  "preciso de uma proposta pra mandar", ou /proposta-comercial.
---

# /proposta-comercial — Gerador de Proposta Comercial

Sai do brief da reunião e entrega proposta em HTML renderizável como PDF — com o nome do cliente, as dores que ele mencionou e os resultados que ele quer alcançar.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md` (serviços, preços, diferenciais, contato)
- **Identidade visual:** `identidade/design-guide.md`
- **Análise da reunião:** `clientes/<nome>/reunioes/<data>-analise.md` (se existir, usar como base)
- **Outputs vão em:** `clientes/<nome>/propostas/<YYYY-MM-DD>-proposta.html`

---

## Workflow

### Passo 1 — Briefing

Se não houver análise de reunião salva, perguntar:

1. **Nome do cliente e empresa**
2. **Qual problema principal quer resolver?** (em palavras do cliente, se possível)
3. **Quais serviços ou entregas estão sendo propostos?**
4. **Qual o investimento?** (valor total ou faixa)
5. **Qual o prazo de execução?**
6. **Tem alguma condição especial, bônus ou garantia?**
7. **Qual o próximo passo esperado do cliente após receber a proposta?**

Se veio de `/analisar-reuniao`, extrair tudo que for possível do arquivo de análise — não perguntar o que já está documentado.

### Passo 2 — Estrutura da proposta

A proposta segue esta estrutura:

**1. Capa**
- Logo da empresa do Gustavo
- "Proposta para [Nome do Cliente]"
- Data

**2. O que entendemos sobre o seu momento**
- 2-3 parágrafos escritos com as dores e contexto do cliente — em primeira pessoa do cliente
- Citar trechos-chave da análise da reunião se disponíveis
- Objetivo: o cliente ler e pensar "isso é exatamente o que eu disse"

**3. O que propomos**
- Descrição da solução em linguagem do cliente, não linguagem técnica
- Foco em resultado, não em processo

**4. Como vai acontecer — fases e entregáveis**
- Dividir em fases com o que é entregue em cada uma
- Prazo por fase
- O que o cliente precisa fornecer (inputs necessários)

**5. Investimento**
- Valor total ou por fase
- Condições de pagamento
- O que está incluído (e, se relevante, o que não está)

**6. Garantia ou diferencial** (se aplicável)
- O que o cliente pode esperar, o que é garantido

**7. Próximos passos**
- Instrução clara sobre como avançar (assinar, aprovar, responder)
- Validade da proposta (recomendado: 15 dias)
- Contato direto (WhatsApp, email)

**8. Rodapé**
- Dados da empresa: nome, CNPJ se tiver, contato

### Passo 3 — Gerar o HTML

Criar `<data>-proposta.html` com:
- Design limpo, legível, profissional
- Cores e tipografia de `identidade/design-guide.md`
- Logo no cabeçalho
- Estrutura em seções com títulos claros
- CSS inline para garantir fidelidade ao imprimir/exportar como PDF

O HTML deve funcionar tanto como página web quanto como PDF gerado pelo browser (Ctrl+P → Salvar como PDF).

### Passo 4 — Revisão antes de finalizar

Mostrar o texto completo da proposta antes de gerar o HTML. Perguntar:
> "Quer ajustar algum trecho antes de gerar o arquivo final?"

Só gerar o HTML após aprovação do conteúdo.

### Passo 5 — Entrega

```
✓ Proposta gerada: clientes/<nome>/propostas/<data>-proposta.html

Pra enviar:
1. Abrir no browser → Ctrl+P → Salvar como PDF
2. Enviar o PDF por email + WhatsApp
3. Rodar /follow-up-reuniao para gerar a mensagem de acompanhamento do dia seguinte
4. Rodar /sequencia-fechamento para ativar o follow-up de 14 dias
```

---

## Regras

- A seção "O que entendemos sobre o seu momento" é a mais importante — se estiver genérica, a proposta falhou
- Nunca usar "soluções inovadoras", "entregamos excelência", "parceria de sucesso" — sem corporativês
- Investimento em destaque, não enterrado — o cliente vai procurar antes de ler o resto
- Prazo de validade é obrigatório — proposta sem validade não cria urgência
- Se não tiver dados suficientes para personalizar, perguntar — proposta genérica é pior do que não ter proposta
- Tom segue `_memoria/preferencias.md`
