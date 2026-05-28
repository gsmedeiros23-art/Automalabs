# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Automalabs

> Execute `/instalar` para configurar este sistema para o seu negócio.

**Estrutura de pastas:**
- `_memoria/` — quem é você, como fala, o que está em foco
- `identidade/` — cores, fontes, logo da sua marca
- `clientes/` — pasta por cliente, cada um com briefing e entregas
- `marketing/` — conteúdo, SEO, campanhas (saída das skills)
- `saidas/` — análises, emails, documentos pontuais
- `dados/` — arquivos a analisar (CSV, PDF, planilha)
- `scripts/` — utilitários (gerar imagem, postar, render)

---

## Contexto do negócio

No início de toda conversa, ler os seguintes arquivos (quando existirem e estiverem preenchidos):

1. `_memoria/empresa.md` — quem você é, o que faz, clientes ativos
2. `_memoria/preferencias.md` — tom de voz, estilo de escrita, o que evitar
3. `_memoria/estrategia.md` — foco atual, prioridades, prazos

Para qualquer tarefa visual (carrossel, post, landing page), consultar `identidade/design-guide.md` como referência de estilo. Se o arquivo estiver em branco, usar os defaults: Inter, títulos 90-100px peso 900, fundo escuro (#0E1116), texto off-white (#FAFAF7).

Não é necessário listar o que foi lido nem confirmar a leitura. Apenas usar o contexto naturalmente.

---

## Fluxo de trabalho

Antes de executar qualquer tarefa, verificar se existe skill relevante em `.claude/skills/`. Se encontrar, seguir as instruções da skill.

Ao concluir uma tarefa que não tinha skill mas parece repetível, perguntar:

> "Isso pode virar uma skill pra próxima vez. Quer que eu crie?"

---

## Aprender com correções

Quando você corrigir algo ou der instrução permanente ("prefiro assim", "sempre que...", "evita..."), perguntar:

> "Quer que eu salve isso pra não precisar repetir?"

Identificar onde salvar:
- **Sobre o negócio ou clientes** → `_memoria/empresa.md`
- **Sobre preferências e estilo** → `_memoria/preferencias.md`
- **Sobre prioridades e foco** → `_memoria/estrategia.md`
- **Regra de comportamento** → `CLAUDE.md`

Salvar com uma linha nova clara, sem reformatar o arquivo inteiro.

---

## Manter contexto atualizado

Ao terminar uma tarefa que mudou algo relevante (cliente novo, skill nova, mudança de foco), perguntar:

> "Isso mudou algo no teu contexto. Quer que eu atualize a memória?"

**Quando NÃO perguntar:** tarefas pontuais sem impacto no contexto, perguntas simples.

---

## Criação de skills

Quando você pedir skill nova:

1. Verificar se existe template relevante em `templates/skills/`
2. Perguntar se é específica desse projeto ou útil em qualquer workspace
3. Ler `_memoria/empresa.md` e `_memoria/preferencias.md` para calibrar ao contexto

---

## Dependências de renderização

Skills que geram imagens (`/carrossel`, `/publicar-tema`, `/aprovar-post`) precisam de Playwright:

```
npm install playwright
npx playwright install chromium
```

Skills de publicação requerem variáveis em `.env`:
```
OPENAI_API_KEY=
META_PAGE_ACCESS_TOKEN=
META_PAGE_ID=
GOOGLE_ADS_DEVELOPER_TOKEN=
```
