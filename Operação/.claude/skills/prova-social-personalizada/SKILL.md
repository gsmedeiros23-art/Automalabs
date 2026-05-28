---
name: prova-social-personalizada
description: >
  Dado o setor e perfil de um lead, seleciona o case mais relevante da biblioteca e o formata
  para inserção no momento certo do fechamento — email, WhatsApp ou proposta.
  Use quando o usuário pedir "case pra esse lead", "qual case usar pra X", "prova social
  pra esse cliente", "seleciona um case", ou /prova-social-personalizada.
---

# /prova-social-personalizada — Seletor de Prova Social por Perfil de Lead

Consulta a biblioteca de cases e seleciona o mais relevante para o lead em questão — formatado para o canal e o momento do funil.

## Dependências

- **Biblioteca de cases:** `marketing/cases/` (pasta com os cases gerados pelo `/case-de-sucesso`)
- **Contexto do lead:** perfil, setor e momento no funil (informados pelo usuário)
- **Tom de voz:** `_memoria/preferencias.md`

---

## Workflow

### Passo 1 — Receber o contexto do lead

O usuário informa:
1. **Setor do lead** (arquitetura, tecnologia, saúde, varejo, etc.)
2. **Dor principal** (o que o lead quer resolver)
3. **Canal onde vai ser usado** (email, WhatsApp ou proposta)
4. **Momento do funil** (Dia 3 da sequência de fechamento? No corpo da proposta? Em resposta a uma objeção?)

### Passo 2 — Consultar a biblioteca

Listar os cases disponíveis em `marketing/cases/`. Para cada um, verificar:
- Setor do cliente do case
- Resultado principal
- Dor que resolveu

Se não existir case do mesmo setor: buscar o case com a dor mais parecida.
Se não existir nenhum case ainda: informar e sugerir rodar `/case-de-sucesso` com o primeiro cliente.

### Passo 3 — Selecionar e justificar

Escolher o case mais relevante e explicar o motivo em uma frase:
> "Recomendo o case da [empresa/cliente] porque a dor era similar ([dor]) e o resultado ([resultado]) vai ressoar com esse lead."

Se houver mais de 1 case adequado, apresentar os 2 melhores e deixar o usuário escolher.

### Passo 4 — Formatar para o canal

**Para email (Dia 3 da sequência de fechamento):**

```
[Parágrafo de transição — conecta o case com o contexto do lead]

[NOME DO CASE OU "Um cliente do setor de X"] tinha exatamente o mesmo desafio:
[1 frase sobre a situação antes]

[O que foi feito — 1-2 frases, sem detalhe técnico]

[Resultado — específico e com número se possível]

[Conexão com o lead — 1 frase ligando o resultado com a situação do lead atual]

[CTA suave — convida para continuar a conversa ou avançar]
```

**Para WhatsApp:**

```
[Nome], lembrei de um caso parecido com o seu.

[Cliente do setor X] estava com [dor similar]. [Resultado em 1 frase].

Posso te mandar mais detalhes?
```

**Para proposta:**

```
## O que fizemos com [empresa/setor similar]

[2-3 parágrafos com o case completo no formato STAR resumido]

> "[Citação do cliente do case]"
```

### Passo 5 — Output

Entregar o texto formatado diretamente no chat, pronto para copiar. Não salvar arquivo — é uso imediato.

---

## Regras

- Nunca usar case de setor completamente diferente sem adaptar o ângulo — relevância é tudo
- Se não houver case algum disponível, dizer isso e sugerir o `/case-de-sucesso` antes de continuar
- Anonimizar o case se o cliente não autorizou o uso do nome — "um cliente do setor de arquitetura" funciona
- Tom segue `_memoria/preferencias.md` — sem "caso de sucesso incrível"
- Resultado com número é sempre mais convincente — se não tiver número, usar transformação qualitativa concreta
