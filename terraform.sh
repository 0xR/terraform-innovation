#!/usr/bin/env bash

export GOOGLE_APPLICATION_CREDENTIALS=$(grep credentials_file environments/rjs.tfvars | awk '{print $3}' | tr -d '"')

params=()
if [ "$1" == init ]; then
  params+=(-backend-config "backend-config/$(whoami).hcl")
fi

terraform "$@" -var-file "environments/$(whoami).tfvars"  "${params[@]}"
