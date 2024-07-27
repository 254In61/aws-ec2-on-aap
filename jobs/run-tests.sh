#!/usr/bin/bash
echo "" && echo "======PRE-CHANGE======" && echo ""
ansible-playbook linux-pre-change-checks.yml -i inventory/staging.yml -e "@~/secrets/test-extra-vars.yml"

echo "" && echo "======EXECUTE-CHANGE======" && echo ""
ansible-playbook linux-execute-change.yml -i inventory/staging.yml -e "@~/secrets/test-extra-vars.yml"

echo "" && echo "======POST-CHANGE======" && echo ""
ansible-playbook linux-post-change-checks.yml -i inventory/staging.yml -e "@~/secrets/test-extra-vars.yml"