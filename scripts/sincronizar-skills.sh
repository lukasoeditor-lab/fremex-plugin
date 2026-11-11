#!/usr/bin/env bash
# Copia as skills do plugin para .claude/skills/, para que funcionem em sessões
# na nuvem do Claude Code (app do celular e claude.ai/code), que não carregam plugins.
# Rode sempre que alterar algo em plugins/fremex/skills/.
set -euo pipefail
cd "$(dirname "$0")/.."
for d in plugins/fremex/skills/*/; do
  nome=$(basename "$d")
  mkdir -p ".claude/skills/$nome"
  cp -R "$d". ".claude/skills/$nome/"
done
echo "Skills sincronizadas em .claude/skills/"
