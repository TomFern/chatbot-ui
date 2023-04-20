#!/usr/bin/env bash
# Generate default prompt - source this file before running the app

prompt_file=semaphoregpt-prompt.txt
echo "Generating SEMAPHOREGPT_PROMPT"
export SEMAPHOREGPT_PROMPT="$(awk 'BEGIN{}{out=out$0"\n"}END{print out}' $prompt_file| sed 's/\n$//')"
