#!/bin/bash

cd /home/tianhao/terminal-bench-hard/agent

harbor run \
  --agent-import-path agent:AgentHarness \
  -d terminal-bench@2.0 \
  -m anthropic/claude-opus-4-6 \
  -e daytona \
  -n 20 \
  --n-attempts 5 \
  -i adaptive-rejection-sampler \
  -i caffe-cifar-10 \
  -i db-wal-recovery \
  -i filter-js-from-html \
  -i gpt2-codegolf \
  -i install-windows-3.11 \
  -i make-doom-for-mips \
  -i mteb-retrieve \
  -i query-optimize \
  -i raman-fitting \
  -i sam-cell-seg \
  -i train-fasttext \
  -i configure-git-webserver \
  -i mteb-leaderboard \
  -i schemelike-metacircular-eval \
  -i video-processing \
  -i dna-insert \
  -i extract-moves-from-video \
  -i make-mips-interpreter \
  -i model-extraction-relu-logits \
  --env-file /home/tianhao/terminal-bench-hard/.env
