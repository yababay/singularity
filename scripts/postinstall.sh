#!/bin/bash

REAL_NAME="`pwd | egrep -o '[a-z0-9\-]+$'`"
SED_EXPR="s/PROJECT_NAME/${REAL_NAME}/"
SVELTE_CONF="svelte.config"
DEPLOY_YAML=".github/workflows/deploy"

cat "$SVELTE_CONF.template" | sed "$SED_EXPR" > "$SVELTE_CONF.js"
cat "$DEPLOY_YAML.template" | sed "$SED_EXPR" > "$DEPLOY_YAML.yaml"
