#!/bin/bash
set -euo pipefail

until [ -f /home/frappe/frappe-bench/sites/common_site_config.json ]; do
  echo "Aguardando common_site_config.json..."
  sleep 2
done

bench new-site "${SITE_NAME}" \
  --no-mariadb-socket \
  --mariadb-root-password "${MYSQL_ROOT_PASSWORD}" \
  --admin-password "${ADMIN_PASSWORD}" \
  --install-app erpnext \
  --set-default
