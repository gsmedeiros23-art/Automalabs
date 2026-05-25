#!/usr/bin/env bash
# ============================================================
# Automalabs — Instalador para Mac / Linux
# Uso: chmod +x instalar.sh && ./instalar.sh
# ============================================================

set -e

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
GRAY='\033[0;90m'
WHITE='\033[0;37m'
BOLD='\033[1m'
NC='\033[0m'

echo ""
echo -e "${CYAN}  ███╗   ███╗ █████╗ ███████╗██╗   ██╗ ██████╗ ███████╗${NC}"
echo -e "${CYAN}  ████╗ ████║██╔══██╗╚══███╔╝╚██╗ ██╔╝██╔═══██╗██╔════╝${NC}"
echo -e "${CYAN}  ██╔████╔██║███████║  ███╔╝  ╚████╔╝ ██║   ██║███████╗${NC}"
echo -e "${CYAN}  ██║╚██╔╝██║██╔══██║ ███╔╝    ╚██╔╝  ██║   ██║╚════██║${NC}"
echo -e "${CYAN}  ██║ ╚═╝ ██║██║  ██║███████╗   ██║   ╚██████╔╝███████║${NC}"
echo -e "${CYAN}  ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝    ╚═════╝ ╚══════╝${NC}"
echo ""
echo -e "${WHITE}  Instalador do sistema Automalabs + Consultoria Comercial${NC}"
echo -e "${GRAY}  --------------------------------------------------------${NC}"
echo ""

# ── Pré-requisitos ──────────────────────────────────────────
CLAUDE_DIR="$HOME/.claude"
COMMANDS_DIR="$CLAUDE_DIR/commands"

if [ ! -d "$CLAUDE_DIR" ]; then
  echo -e "${RED}  [ERRO] Pasta .claude não encontrada em $CLAUDE_DIR${NC}"
  echo -e "${RED}         Instale o Claude Code antes de continuar.${NC}"
  echo -e "${GRAY}         https://claude.ai/code${NC}"
  echo ""
  exit 1
fi

echo -e "${GREEN}  [OK] Claude Code detectado em $CLAUDE_DIR${NC}"
echo ""

# ── Escolher pasta de destino ───────────────────────────────
echo -e "${YELLOW}  Onde instalar o Automalabs?${NC}"
echo -e "${GRAY}  (pasta que vai se tornar sua operação — ex: ~/Projetos/minha-agencia)${NC}"
echo ""
read -p "  Caminho de destino: " DESTINO

if [ -z "$DESTINO" ]; then
  echo -e "${RED}  [ERRO] Caminho não pode ser vazio.${NC}"
  exit 1
fi

# Expandir ~ se necessário
DESTINO="${DESTINO/#\~/$HOME}"

if [ -d "$DESTINO" ] && [ "$(ls -A "$DESTINO" 2>/dev/null)" ]; then
  echo ""
  echo -e "${YELLOW}  [AVISO] A pasta '$DESTINO' já existe e não está vazia.${NC}"
  read -p "  Continuar mesmo assim? Os arquivos existentes não serão apagados. (s/n): " CONFIRMAR
  if [ "$CONFIRMAR" != "s" ] && [ "$CONFIRMAR" != "S" ]; then
    echo -e "${GRAY}  Instalação cancelada.${NC}"
    exit 0
  fi
fi

echo ""
echo -e "${CYAN}  Instalando...${NC}"
echo ""

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OPERACAO_SRC="$SCRIPT_DIR/Operação"

# ── 1. Copiar pasta Operação ────────────────────────────────
if [ ! -d "$OPERACAO_SRC" ]; then
  echo -e "${RED}  [ERRO] Pasta 'Operação' não encontrada em $SCRIPT_DIR${NC}"
  exit 1
fi

echo -e "${WHITE}  [1/3] Copiando sistema Automalabs...${NC}"

mkdir -p "$DESTINO"
cp -r "$OPERACAO_SRC/." "$DESTINO/"

# Limpar _memoria/ para estado limpo
MEMORIA_DIR="$DESTINO/_memoria"
TEMPLATE_DIR="$SCRIPT_DIR/_template/_memoria"

if [ -d "$TEMPLATE_DIR" ]; then
  cp "$TEMPLATE_DIR/"* "$MEMORIA_DIR/" 2>/dev/null && \
    echo -e "${GRAY}       _memoria/ resetada para estado limpo${NC}"
fi

# Limpar clientes/
CLIENTES_DIR="$DESTINO/clientes"
if [ -d "$CLIENTES_DIR" ]; then
  rm -rf "$CLIENTES_DIR"/*
  echo -e "${GRAY}       clientes/ limpa${NC}"
fi

echo -e "${GREEN}  [1/3] Sistema Automalabs copiado para $DESTINO${NC}"

# ── 2. Instalar todas as skills globalmente ─────────────────
echo -e "${WHITE}  [2/3] Instalando todas as skills...${NC}"

mkdir -p "$COMMANDS_DIR"
TOTAL_COUNT=0

# Todas as skills (Operação/.claude/skills/[nome]/SKILL.md)
MAZY_SKILLS_DIR="$SCRIPT_DIR/Operação/.claude/skills"
if [ -d "$MAZY_SKILLS_DIR" ]; then
  for skill_dir in "$MAZY_SKILLS_DIR"/*/; do
    skill_file="$skill_dir/SKILL.md"
    if [ -f "$skill_file" ]; then
      nome=$(basename "$skill_dir")
      cp "$skill_file" "$COMMANDS_DIR/$nome.md"
      echo -e "${GRAY}       /$nome${NC}"
      TOTAL_COUNT=$((TOTAL_COUNT + 1))
    fi
  done
fi

echo -e "${GREEN}  [2/3] $TOTAL_COUNT skills instaladas em $COMMANDS_DIR${NC}"

# ── 3. Verificar Claude Code no PATH ───────────────────────
echo -e "${WHITE}  [3/3] Verificando Claude Code...${NC}"

if command -v claude &>/dev/null; then
  echo -e "${GREEN}  [3/3] Claude Code detectado: $(which claude)${NC}"
else
  echo -e "${YELLOW}  [3/3] 'claude' não está no PATH — abra pelo menu ou VS Code.${NC}"
fi

# ── Resumo final ────────────────────────────────────────────
echo ""
echo -e "${CYAN}  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}  Instalação concluída.${NC}"
echo ""
echo -e "${WHITE}  Sistema Automalabs:     $DESTINO${NC}"
echo -e "${WHITE}  Skills globais:     $COMMANDS_DIR${NC}"
echo ""
echo -e "${YELLOW}  Próximo passo:${NC}"
echo -e "${WHITE}  1. Abra o Claude Code dentro da pasta: $DESTINO${NC}"
echo -e "${WHITE}  2. Execute o comando: /instalar${NC}"
echo -e "${GRAY}     O sistema vai te fazer 10 perguntas e configurar tudo.${NC}"
echo ""
echo -e "${YELLOW}  Todas as skills disponíveis globalmente:${NC}"
echo -e "${WHITE}  /instalar /seo /meta-ads /anuncio-google /carrossel /publicar-tema${NC}"
echo -e "${WHITE}  /relatorio-ads /email-profissional /proposta-comercial e mais...${NC}"
echo -e "${WHITE}  /comercial-diagnostico /spin-diagnostico /qualificacao-leads${NC}"
echo -e "${WHITE}  /playbook-comercial /blueprint-comercial /activity-flow${NC}"
echo -e "${WHITE}  /scripts-whatsapp /avaliador-crm${NC}"
echo ""
echo -e "${CYAN}  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
