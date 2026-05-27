# ============================================================
# Automalabs — Instalador para Windows
# Uso: clique com botão direito → "Executar com PowerShell"
#      ou: powershell -ExecutionPolicy Bypass -File instalar.ps1
# ============================================================

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "  ███╗   ███╗ █████╗ ███████╗██╗   ██╗ ██████╗ ███████╗" -ForegroundColor Cyan
Write-Host "  ████╗ ████║██╔══██╗╚══███╔╝╚██╗ ██╔╝██╔═══██╗██╔════╝" -ForegroundColor Cyan
Write-Host "  ██╔████╔██║███████║  ███╔╝  ╚████╔╝ ██║   ██║███████╗" -ForegroundColor Cyan
Write-Host "  ██║╚██╔╝██║██╔══██║ ███╔╝    ╚██╔╝  ██║   ██║╚════██║" -ForegroundColor Cyan
Write-Host "  ██║ ╚═╝ ██║██║  ██║███████╗   ██║   ╚██████╔╝███████║" -ForegroundColor Cyan
Write-Host "  ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝    ╚═════╝ ╚══════╝" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Instalador do sistema Automalabs + Consultoria Comercial" -ForegroundColor White
Write-Host "  --------------------------------------------------------" -ForegroundColor DarkGray
Write-Host ""

# ── Pré-requisitos ──────────────────────────────────────────
$claudeDir = "$env:USERPROFILE\.claude"
$commandsDir = "$claudeDir\commands"

if (-not (Test-Path $claudeDir)) {
    Write-Host "  [ERRO] Pasta .claude não encontrada em $claudeDir" -ForegroundColor Red
    Write-Host "         Instale o Claude Code antes de continuar." -ForegroundColor Red
    Write-Host "         https://claude.ai/code" -ForegroundColor DarkGray
    Write-Host ""
    Read-Host "  Pressione Enter para sair"
    exit 1
}

Write-Host "  [OK] Claude Code detectado em $claudeDir" -ForegroundColor Green
Write-Host ""

# ── Escolher pasta de destino ───────────────────────────────
Write-Host "  Onde instalar o Automalabs?" -ForegroundColor Yellow
Write-Host "  (pasta que vai se tornar sua operação — ex: C:\Projetos\minha-agencia)" -ForegroundColor DarkGray
Write-Host ""
$destino = Read-Host "  Caminho de destino"

if ([string]::IsNullOrWhiteSpace($destino)) {
    Write-Host "  [ERRO] Caminho não pode ser vazio." -ForegroundColor Red
    Read-Host "  Pressione Enter para sair"
    exit 1
}

$destino = $destino.Trim('"').Trim("'")

if (Test-Path $destino) {
    $arquivos = Get-ChildItem $destino -ErrorAction SilentlyContinue
    if ($arquivos) {
        Write-Host ""
        Write-Host "  [AVISO] A pasta '$destino' já existe e não está vazia." -ForegroundColor Yellow
        $confirmar = Read-Host "  Continuar mesmo assim? Os arquivos existentes não serão apagados. (s/n)"
        if ($confirmar -ne "s" -and $confirmar -ne "S") {
            Write-Host "  Instalação cancelada." -ForegroundColor DarkGray
            exit 0
        }
    }
}

Write-Host ""
Write-Host "  Instalando..." -ForegroundColor Cyan
Write-Host ""

# ── 1. Copiar pasta Operação ────────────────────────────────
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$operacaoSrc = Join-Path $scriptDir "Operação"

if (-not (Test-Path $operacaoSrc)) {
    Write-Host "  [ERRO] Pasta 'Operação' não encontrada em $scriptDir" -ForegroundColor Red
    Read-Host "  Pressione Enter para sair"
    exit 1
}

Write-Host "  [1/3] Copiando sistema Automalabs..." -ForegroundColor White

New-Item -ItemType Directory -Force $destino | Out-Null
Copy-Item -Path "$operacaoSrc\*" -Destination $destino -Recurse -Force

# Limpar clientes/ (manter só a estrutura)
$clientesDir = Join-Path $destino "clientes"
if (Test-Path $clientesDir) {
    Remove-Item -Path "$clientesDir\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "       clientes/ limpa" -ForegroundColor DarkGray
}

Write-Host "  [1/3] Sistema Automalabs copiado para $destino" -ForegroundColor Green

# ── 2. Instalar todas as skills globalmente ─────────────────
Write-Host "  [2/3] Instalando todas as skills..." -ForegroundColor White

New-Item -ItemType Directory -Force $commandsDir | Out-Null
$totalCount = 0

# Todas as skills (Operação/.claude/skills/[nome]/SKILL.md)
$mazySkillsDir = Join-Path $scriptDir "Operação\.claude\skills"
if (Test-Path $mazySkillsDir) {
    $skillFolders = Get-ChildItem $mazySkillsDir -Directory
    foreach ($folder in $skillFolders) {
        $skillFile = Join-Path $folder.FullName "SKILL.md"
        if (Test-Path $skillFile) {
            $dest = Join-Path $commandsDir "$($folder.Name).md"
            Copy-Item -Path $skillFile -Destination $dest -Force
            Write-Host "       /$($folder.Name)" -ForegroundColor DarkGray
            $totalCount++
        }
    }
}

Write-Host "  [2/3] $totalCount skills instaladas em $commandsDir" -ForegroundColor Green

# ── 3. Verificar Claude Code no PATH ───────────────────────
Write-Host "  [3/3] Verificando Claude Code..." -ForegroundColor White

$claudeCmd = Get-Command "claude" -ErrorAction SilentlyContinue
if ($claudeCmd) {
    Write-Host "  [3/3] Claude Code detectado: $($claudeCmd.Source)" -ForegroundColor Green
} else {
    Write-Host "  [3/3] 'claude' não está no PATH — abra manualmente pelo menu ou VS Code." -ForegroundColor Yellow
}

# ── Resumo final ────────────────────────────────────────────
Write-Host ""
Write-Host "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host "  Instalação concluída." -ForegroundColor Green
Write-Host ""
Write-Host "  Sistema Automalabs:     $destino" -ForegroundColor White
Write-Host "  Skills globais:     $commandsDir" -ForegroundColor White
Write-Host ""
Write-Host "  Próximo passo:" -ForegroundColor Yellow
Write-Host "  1. Abra o Claude Code dentro da pasta: $destino" -ForegroundColor White
Write-Host "  2. Execute o comando: /instalar" -ForegroundColor White
Write-Host "     O sistema vai te fazer 10 perguntas e configurar tudo." -ForegroundColor DarkGray
Write-Host ""
Write-Host "  Todas as skills disponíveis globalmente:" -ForegroundColor Yellow
Write-Host "  /instalar /seo /meta-ads /anuncio-google /carrossel /publicar-tema" -ForegroundColor White
Write-Host "  /relatorio-ads /email-profissional /proposta-comercial e mais..." -ForegroundColor White
Write-Host "  /comercial-diagnostico /spin-diagnostico /qualificacao-leads" -ForegroundColor White
Write-Host "  /playbook-comercial /blueprint-comercial /activity-flow" -ForegroundColor White
Write-Host "  /scripts-whatsapp /avaliador-crm" -ForegroundColor White
Write-Host ""
Write-Host "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host ""

Read-Host "  Pressione Enter para fechar"
