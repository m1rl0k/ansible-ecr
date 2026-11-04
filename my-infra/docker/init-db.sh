#!/usr/bin/env bash
set -e

export SA_PASSWORD="${SA_PASSWORD:-${MSSQL_SA_PASSWORD:-}}"
: "${SA_PASSWORD:?Set SA_PASSWORD or MSSQL_SA_PASSWORD at runtime}"
export SQLCMDPASSWORD="$SA_PASSWORD"

echo "Starting SQL Server in background..."
/opt/mssql/bin/sqlservr > /var/opt/mssql/log/errorlog 2>&1 &
SQL_PID=$!

MAX_ATTEMPTS=30
ATTEMPT=1
echo "Waiting for SQL Server to become available..."
until /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -Q "SELECT 1" &>/dev/null; do
    if [ ${ATTEMPT} -ge ${MAX_ATTEMPTS} ]; then
        echo "SQL Server did not become available after ${ATTEMPT} attempts. Exiting."
        kill $SQL_PID
        exit 1
    fi
    echo "Attempt ${ATTEMPT} of ${MAX_ATTEMPTS}: SQL Server not available, waiting 2 seconds..."
    sleep 20
    ((ATTEMPT++))
done

echo "SQL Server is up!"
echo "Applying schema..."
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -i /schema.sql
echo "Schema applied successfully!"

echo "Tailing SQL Server logs..."
tail -F /var/opt/mssql/log/errorlog &

wait $SQL_PID
