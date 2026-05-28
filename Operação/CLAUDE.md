# ÓLUX — Automalabs

Operação da empresa. Cada setor tem sua área, com processos, entregas e documentos.

**Estrutura de pastas:**
- `_memoria/` — quem é a empresa, como falamos, foco atual
- `identidade/` — marca aplicada em tudo que o sistema gera
- `marketing/` — campanhas, conteúdo, mídia paga
- `clientes/` — projetos por cliente (construtoras, condomínios, corporativo)
- `saidas/` — documentos pontuais (análises, emails, propostas rápidas)
- `dados/` — arquivos a analisar (CSV, PDF, planilha)
- `scripts/` — utilitários (gerar imagem, render, automações)

---

## Contexto do negócio

No início de toda conversa, ler os seguintes arquivos:

1. `_memoria/empresa.md` — quem é a ÓLUX, o que faz, equipe, clientes
2. `_memoria/preferencias.md` — tom de voz, estilo de escrita, o que evitar
3. `_memoria/estrategia.md` — foco atual, prioridades, prazos

Para qualquer tarefa visual (carrossel, post, proposta, landing page), consultar `identidade/design-guide.md`. Cores principais: Azul ÓLUX `#3333EE`, Magenta `#FF1FA0`, Ice `#D9F2FF`.

Não listar o que foi lido nem confirmar a leitura. Usar o contexto naturalmente.

---

## Sobre a empresa

ÓLUX é uma empresa de segurança inteligente — sistemas eletrônicos integrados de segurança e automação. Atua em construção civil, residencial, condominial, corporativo e smart cities. Equipe com múltiplos setores (suporte, atendimento, CS, vendas, admin, RH, dev, tecnologia). Cresceu até hoje por indicação — agora estruturando o comercial.

## Setores

- **Comercial:** 1 vendedora ativa + diretor chegando. Foco: estruturar processo e previsibilidade.
- **Customer Success:** gestão de clientes ativos, relacionamento pós-venda
- **Suporte / Atendimento:** operação 24h, 3 centrais de segurança
- **Tecnologia / Desenvolvimento:** produto próprio (app PHI) e sistemas integrados
- **Marketing:** apoio ao comercial, conteúdo, presença digital
- **Administrativo / RH / Financeiro:** estrutura de suporte interno

## O que mais fazemos aqui

- Propostas comerciais para construtoras, condomínios e corporativo
- Conteúdo de marketing (carrosséis, posts, artigos, ads)
- Análise de dados e relatórios de segurança
- Materiais de apoio ao time comercial (scripts, qualificação, follow-up)
- SEO e presença digital

---

## Fluxo de trabalho

Antes de executar qualquer tarefa, verificar se existe skill relevante em `.claude/skills/`. Se encontrar, seguir as instruções da skill.

Ao concluir uma tarefa que não tinha skill mas parece repetível, perguntar:

> "Isso pode virar uma skill pra próxima vez. Quer que eu crie?"

---

## Aprender com correções

Quando o usuário corrigir algo ou der instrução permanente, perguntar:

> "Quer que eu salve isso pra não precisar repetir?"

- Sobre o negócio ou clientes → `_memoria/empresa.md`
- Sobre preferências e estilo → `_memoria/preferencias.md`
- Sobre prioridades e foco → `_memoria/estrategia.md`
- Regra de comportamento → `CLAUDE.md`

---

## Manter contexto atualizado

Ao terminar uma tarefa que mudou algo relevante (cliente novo, skill nova, mudança de foco), perguntar:

> "Isso mudou algo no teu contexto. Quer que eu atualize a memória?"

Não perguntar em tarefas pontuais sem impacto no contexto.

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
