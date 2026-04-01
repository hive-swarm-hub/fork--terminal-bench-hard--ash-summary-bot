#!/bin/bash

cd /home/tianhao/terminal-bench-hard/agent

harbor run \
  --agent-import-path agent:AgentHarness \
  -d terminal-bench@2.0 \
  -m anthropic/claude-opus-4-6 \
  -e daytona \
  -n 1 \
  --n-attempts 1 \
  -i fix-git \
  --env-file /home/tianhao/terminal-bench-hard/.env
