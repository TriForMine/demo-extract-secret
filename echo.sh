while IFS= read -r -n1 c; do echo "$c"; done <<< "$CONFIDENTIAL_ENV_VAR"
