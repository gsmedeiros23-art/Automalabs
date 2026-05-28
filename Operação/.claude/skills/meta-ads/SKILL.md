---
name: meta-ads
description: >
  Cria estrutura completa de campanha do Meta Ads (Facebook + Instagram) a partir de um briefing.
  Gera planejamento de públicos, copies prontas pra cada anúncio, criativos via /carrossel,
  configurações de campanha e guia passo a passo pra subir no Ads Manager.
  Use quando o usuário pedir "criar campanha meta", "campanha facebook", "campanha instagram",
  "meta ads", "anúncio meta", "tráfego pago meta", ou /meta-ads.
---

# /meta-ads — Estrutura de campanha Meta Ads

Skill que monta a campanha inteira — público, criativos, copies e configurações — pronta pra subir no Ads Manager sem precisar tomar decisões na interface. Sai do briefing direto pra pasta de campanha organizada.

## Dependências

- **Contexto do negócio:** `_memoria/empresa.md` (produto/serviço, público, região, diferenciais)
- **Tom de voz:** `_memoria/preferencias.md`
- **Identidade visual:** `identidade/design-guide.md` — lida antes de criar qualquer criativo
- **Skill de criativos:** `.claude/skills/carrossel/SKILL.md` — usada no Passo 5
- **Pesquisa SEO (se existir):** `marketing/seo/01-pesquisa-demanda.md`, `02-analise-concorrencia.md`
- **Outputs vão em:** `marketing/campanhas/meta-ads-<YYYY-MM-DD>/`

---

## Workflow

### Passo 1 — Briefing

Se o usuário não passou briefing, perguntar em ordem:

1. **Objetivo da campanha?**
   - Gerar leads (formulário ou WhatsApp)
   - Gerar tráfego pro site
   - Aumentar alcance e reconhecimento de marca
   - Vender diretamente (e-commerce)
   - Engajamento em post específico

2. **O que vai ser anunciado?** (produto, serviço, oferta — 2-3 linhas)

3. **Quem é o público?** (perfil real — idade, cidade, o que faz, o que sente antes de buscar esse serviço)

4. **Orçamento diário?** (R$/dia — ou total do período)

5. **Período da campanha?** (data de início e fim, ou contínua)

6. **Destino do anúncio?** (link do site, WhatsApp, formulário nativo do Meta, DM do Instagram)

7. **Tem pixel do Meta instalado no site?** (sim / não / não sei)

8. **Tem lista de clientes ou emails?** (pra criar público personalizado e lookalike)

Se já existe `marketing/seo/02-analise-concorrencia.md`, usar pra identificar ângulos que os concorrentes usam — e diferenciá-los.

---

### Passo 2 — Estratégia de público

Meta Ads é uma plataforma de **interrupção** — o público não está buscando, está sendo alcançado. A segmentação define tudo.

Montar três camadas de público:

#### Camada Fria — Descoberta
Pessoas que nunca tiveram contato com a marca.

- **Interesses:** mapear 8-12 interesses relevantes no Meta (categorias de interesse, comportamentos, dados demográficos). Exemplo pra arquitetura: decoração de interiores, casa e jardim, design de interiores, reforma de imóvel, arquitetura, revistas de decoração, etc.
- **Comportamentos:** proprietários de imóvel, recém-casados, alta renda (se disponível na região)
- **Segmentação geográfica:** cidade + raio (conforme briefing)
- **Idade e gênero:** ajustar conforme perfil real do cliente

Montar **2 conjuntos de anúncios** nessa camada (testar segmentações diferentes):
- Conjunto A: interesses amplos (nicho geral)
- Conjunto B: interesses específicos (comportamento de compra)

#### Camada Morna — Retargeting
Pessoas que já tiveram algum contato com a marca.

Só montar se o pixel estiver instalado ou se houver engajamento no Instagram/Facebook.

- **Visitantes do site** (últimos 30/60/90 dias) — excluir quem já converteu
- **Engajadores no Instagram** (assistiram vídeo, salvaram post, mandaram DM, últimos 30 dias)
- **Engajadores na Página FB** (últimos 30 dias)

Conjuntos de anúncios:
- Conjunto C: visitantes do site
- Conjunto D: engajadores nas redes sociais

#### Camada Quente — Lookalike e Base
Pessoas parecidas com quem já é cliente.

Só montar se houver lista de clientes (email, telefone) ou base de conversões no pixel (mínimo 100 conversões).

- **Lookalike 1%** da lista de clientes (público mais parecido com quem já comprou)
- **Lookalike 2-3%** pra escalar alcance mantendo qualidade

Conjunto E: lookalike da base de clientes

---

### Passo 3 — Estrutura de campanha

Montar conforme objetivo do Passo 1:

```
Campanha: [Nome do negócio] — [Objetivo] — [Mês/Ano]
│
├── Conjunto A: Frio — Interesses Amplos
│   ├── Anúncio A1 (criativo carrossel)
│   └── Anúncio A2 (criativo imagem única)
│
├── Conjunto B: Frio — Interesses Específicos
│   ├── Anúncio B1 (criativo carrossel)
│   └── Anúncio B2 (criativo imagem única)
│
├── Conjunto C: Morno — Visitantes do Site (se pixel ativo)
│   └── Anúncio C1 (criativo de retargeting — ângulo diferente)
│
├── Conjunto D: Morno — Engajadores Redes Sociais (se houver)
│   └── Anúncio D1
│
└── Conjunto E: Quente — Lookalike (se houver lista)
    └── Anúncio E1
```

**Regras de estrutura:**
- Público frio: sempre começar com 2 conjuntos testando segmentações diferentes
- Público morno e quente: 1 conjunto cada, copy mais direta (já te conhecem)
- Nunca misturar temperaturas de público no mesmo conjunto
- Excluir público quente do público frio (evitar sobreposição)

---

### Passo 4 — Copies dos anúncios

Pra cada anúncio, gerar os 4 elementos obrigatórios:

**Texto principal (primary text):** 125 caracteres ideais, até 300. É o que aparece acima da imagem.
- Frio: começar com dor ou desejo do público, nunca com o nome da empresa
- Morno: começar com referência ao que ele já viu ("Você visitou nosso site…" ou mais sutil)
- Quente: mais direto, proposta clara

**Título (headline):** até 27 caracteres. Aparece abaixo da imagem/criativo.
- Complementar o texto principal, não repetir
- CTA ou benefício concreto

**Descrição:** até 27 caracteres. Aparece abaixo do título em alguns posicionamentos.
- Reforço rápido: prazo, garantia, diferencial

**CTA (botão):** escolher entre as opções do Meta:
- Saiba mais
- Entre em contato
- Enviar mensagem
- Inscrever-se
- Ver mais

Gerar **2 versões de copy** por conjunto de anúncio — ângulos diferentes pra testar:
- **Versão A:** ângulo de dor/problema ("Cansado de…", "Sem tempo pra…")
- **Versão B:** ângulo de desejo/transformação ("Imagine…", "Como seria se…")

Seguir `_memoria/preferencias.md` estritamente. Sem jargão de marketing. Sem "experiência única", "qualidade ímpar", "soluções inovadoras".

**Restrições do Meta:**
- Texto principal: evitar mais de 20% de texto na imagem (criativo pode ser reprovado)
- Sem afirmações pessoais sobre o público ("você está acima do peso", "você tem dívidas")
- Sem promessas de resultado garantido ("ganhe R$X por dia", "emagreça 10kg")
- Sem linguagem de urgência falsa ("só hoje", "últimas vagas" sem ser verdade)

---

### Passo 5 — Criativos

Pra cada conjunto de anúncios, gerar os criativos usando `.claude/skills/carrossel/SKILL.md`.

**Formatos por posicionamento:**

| Posicionamento | Formato | Resolução |
|---|---|---|
| Feed Instagram/Facebook | Retrato | 1080x1350 (4:5) |
| Stories e Reels | Vertical | 1080x1920 (9:16) |
| Feed carrossel | Múltiplas imagens | 1080x1080 ou 1080x1350 |

**Por campanha, gerar no mínimo:**
- 1 carrossel (3-5 slides) — posicionamento Feed
- 1 imagem única — posicionamento Feed
- 1 stories/reels — posicionamento Stories (adaptar o carrossel pra 9:16)

**Para público frio:**
- Slide 1 (capa): gancho visual forte — problema ou transformação, sem logo dominante
- Slides 2-4: prova, benefícios concretos, diferenciais
- Slide final: CTA claro + contato

**Para público morno/quente:**
- Criativo mais direto: proposta + CTA
- Pode usar depoimento real ou antes/depois (se houver)

**Atenção:** criativos de anúncio não são iguais a posts orgânicos. Nos anúncios:
- Texto dentro da imagem deve ser mínimo (preferência por imagem limpa)
- O texto principal faz o trabalho da narrativa
- O criativo pára o scroll — deve funcionar sem legenda

Salvar criativos em:
```
criativos/
  conjunto-a/
    feed-carrossel/ (1080x1350)
      slide-01.png → slide-05.png
    feed-imagem-unica/
      imagem.png
    stories/
      slide-01.png → slide-05.png (1080x1920)
  conjunto-b/
    ...
  conjunto-c/
    ...
```

---

### Passo 6 — Configurações de campanha

Gerar `configuracoes.md` com:

**Nível de campanha:**
- Objetivo: [conforme briefing]
- Orçamento: Campaign Budget Optimization (CBO) se budget total > R$50/dia — deixa o Meta otimizar entre conjuntos. Se menor, usar ABO (orçamento por conjunto).
- Limite de gasto: definir máximo diário e total
- Datas: início e fim (ou contínua)

**Nível de conjunto de anúncios:**
- Orçamento sugerido por conjunto (se ABO)
- Segmentação detalhada de cada público (copiar do Passo 2)
- Posicionamentos: **Advantage+ Placements** pra começar (automático). Passar pra manual só quando tiver dados.
- Estratégia de lance: **Menor custo** pra início. Migrar pra **Meta de custo** quando tiver 50+ eventos de conversão.
- Otimização: conforme objetivo (alcance, clique no link, lead, compra)
- Janela de atribuição: 7 dias após clique + 1 dia após visualização

**Pixel e conversões:**
- Se pixel instalado: selecionar evento de conversão correto (Lead, Purchase, Contact)
- Se não instalado: instruir setup via Meta Pixel Helper + GTM antes de ativar campanha
- Sem pixel configurado = campanha otimiza pra clique (muito menos eficiente)

---

### Passo 7 — Checklist de lançamento

Gerar `checklist-lancamento.md`:

```
Antes de ativar:
[ ] Pixel instalado e disparando no evento correto
[ ] URL de destino testada (abre, carrega rápido, mobile-friendly)
[ ] WhatsApp/formulário funcionando (testar o fluxo completo)
[ ] Criativos aprovados pelo cliente
[ ] Copies revisadas (sem palavras proibidas pelo Meta)
[ ] Públicos configurados sem sobreposição
[ ] Orçamento diário confirmado
[ ] Método de pagamento ativo no Business Manager
[ ] Pixel associado à conta de anúncios
[ ] Conta de anúncios vinculada à Página e ao Instagram

Nos primeiros 7 dias:
[ ] Não alterar conjuntos durante a fase de aprendizado (mín. 50 eventos)
[ ] Monitorar frequência (acima de 2.5 em 7 dias = público saturando)
[ ] Monitorar CTR (abaixo de 1% no feed = criativo fraco)
[ ] Monitorar CPL/CPA vs meta
[ ] Pausar anúncios com CTR < 0.5% após 1.000 impressões

Após 7-14 dias:
[ ] Escalar conjunto vencedor (aumentar orçamento em no máx. 20%/dia)
[ ] Pausar conjuntos com CPA > meta após fase de aprendizado
[ ] Criar lookalike dos que converteram
[ ] Iniciar retargeting com visitantes do site
```

---

### Passo 8 — Guia de setup no Ads Manager

Gerar `README.md` com passo a passo visual pra subir a campanha manualmente:

```
1. Acessar business.facebook.com → Gerenciador de Anúncios
2. Criar nova campanha → selecionar objetivo [X]
3. Configurar CBO/ABO conforme configuracoes.md
4. Criar Conjunto A:
   - Público: [colar segmentação de publicos.md]
   - Posicionamentos: Advantage+
   - Orçamento: R$X/dia
5. Criar anúncios do Conjunto A:
   - Fazer upload dos criativos de criativos/conjunto-a/
   - Colar copies de copies.md
   - Definir URL de destino e CTA
6. Repetir pra Conjunto B, C, D, E
7. Revisar tudo em modo Rascunho antes de publicar
8. Publicar → aguardar aprovação (geralmente < 24h)
9. Não editar nada pelos primeiros 7 dias (fase de aprendizado)
```

---

### Passo 9 — Resumo de entrega

Mostrar pro usuário:

```
✓ Campanha pronta: marketing/campanhas/meta-ads-<YYYY-MM-DD>/

Estrutura:
- X conjuntos de anúncios
- X anúncios
- X criativos gerados (Feed + Stories)
- X versões de copy

Públicos:
- Frio: [resumo da segmentação]
- Morno: [se configurado]
- Quente: [se configurado]

Orçamento sugerido: R$X/dia total

Antes de subir:
1. Confirmar que o pixel está instalado e disparando
2. Testar URL de destino no mobile
3. Subir seguindo o README.md
4. Não alterar nos primeiros 7 dias

Quando tiver 7 dias de dados, rodar /relatorio-ads pra ver o que escalar.
```

---

## Integração com outras skills

- **`/seo`** — usar análise de concorrência pra calibrar ângulos das copies
- **`/carrossel`** — usado no Passo 5 pra gerar todos os criativos
- **`/relatorio-ads`** — monitoramento semanal após campanha no ar
- **`/publicar-tema`** — conteúdo orgânico que reforça o que os anúncios prometem

---

## Regras

- **Nunca inventar dados de CPL ou CPM.** Se o cliente perguntar quanto vai custar por lead, dar faixa baseada em WebSearch pro nicho — nunca número preciso.
- **Sempre começar pausado.** Cliente revisa tudo antes de ativar.
- **Pixel antes de tudo.** Sem pixel configurado, reportar como bloqueador crítico — campanha sem pixel é 60% menos eficiente.
- **Fase de aprendizado é sagrada.** Nunca editar campanha nos primeiros 7 dias ou 50 eventos de conversão — o algoritmo precisa calibrar.
- **Frequência é o termômetro do público.** Acima de 3.0 em 7 dias = criativo novo ou público novo.
- **Público frio nunca vê copy de retargeting.** Ângulos diferentes pra cada temperatura.
- **Copies seguem `_memoria/preferencias.md` estritamente.** Sem corporativês, sem jargão de marketing, sem promessas não-comprováveis.
- **Criativos de anúncio ≠ posts orgânicos.** O anúncio interrompe — precisa parar o scroll sozinho, sem depender do texto.
