# Automalabs

Sistema operacional para agências e consultores — marketing digital, consultoria comercial e automação de operações, rodando dentro do Claude Code.

---

## O que está incluído

### Skills de Marketing Digital
`/seo` `/anuncio-google` `/meta-ads` `/carrossel` `/publicar-tema` `/relatorio-ads` `/email-profissional` `/responder-avaliacoes` `/analisar-dados` `/proposta-comercial` `/analisar-reuniao` e mais.

### Skills de Consultoria Comercial
`/comercial-diagnostico` `/spin-diagnostico` `/qualificacao-leads` `/playbook-comercial` `/blueprint-comercial` `/activity-flow` `/scripts-whatsapp` `/avaliador-crm`

---

## Instalação

### Windows
```
powershell -ExecutionPolicy Bypass -File instalar.ps1
```
Ou clique com botão direito no `instalar.ps1` → **Executar com PowerShell**.

### Mac / Linux
```bash
chmod +x instalar.sh
./instalar.sh
```

O instalador vai:
1. Perguntar onde instalar
2. Copiar o sistema Automalabs para a pasta escolhida (com `_memoria/` limpa)
3. Instalar as skills de consultoria comercial globalmente (`~/.claude/commands/`)
4. Instruir o próximo passo

### Próximo passo após instalar
Abra o Claude Code dentro da pasta instalada e execute:
```
/instalar
```
O sistema faz 10 perguntas e configura tudo para o seu negócio.

---

## Resetar para um negócio novo

Para usar o sistema em um negócio diferente (trocar de empresa, ou passar para outra pessoa):

1. Abra o Claude Code dentro da pasta do sistema
2. Execute `/instalar`
3. Quando o sistema perguntar "Já tem contexto preenchido. Sobrescrever ou complementar?", escolha **sobrescrever**
4. Responda as perguntas com os dados do novo negócio

Isso reescreve `_memoria/empresa.md`, `_memoria/preferencias.md`, `_memoria/estrategia.md` e o `CLAUDE.md` sem apagar projetos de clientes anteriores.

---

## Estrutura de pastas

```
[sua-pasta]/
  .claude/
    skills/          ← skills do Automalabs (marketing, operação)
  _memoria/          ← contexto do seu negócio (empresa, tom, foco)
  identidade/        ← logo, cores, fontes
  clientes/          ← um subdiretório por cliente
  marketing/         ← saídas de conteúdo e campanhas
  saidas/            ← análises, emails, documentos pontuais
  dados/             ← arquivos para analisar (CSV, PDF, planilha)
  templates/         ← templates de CLAUDE.md, skills e identidade
  CLAUDE.md          ← configuração principal do sistema
```

Skills de consultoria comercial ficam em `~/.claude/commands/` — disponíveis em qualquer pasta que você abrir no Claude Code.

---

## Novo cliente (dentro do mesmo negócio)

Para iniciar um projeto para um novo cliente sem resetar o sistema:

```
/novo-projeto
```

O sistema cria `clientes/[nome-do-cliente]/` com CLAUDE.md próprio e estrutura de pastas para as entregas. As skills de consultoria comercial criam `cliente-contexto.md` dentro dessa pasta automaticamente.

---

## Pré-requisitos

- [Claude Code](https://claude.ai/code) instalado
- Conta Anthropic ativa

Opcional (para skills de publicação e renderização):
```bash
npm install playwright
npx playwright install chromium
```

---

*Automalabs — 2026*
