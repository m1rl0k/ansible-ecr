#!/bin/bash

export DB_PASSWORD="${DB_PASSWORD:-${SA_PASSWORD:-${MSSQL_SA_PASSWORD:-}}}"
: "${DB_PASSWORD:?Set DB_PASSWORD, SA_PASSWORD or MSSQL_SA_PASSWORD at runtime}"

# Database connection test script
echo "Attempting to connect to SQL Server database..."

# Wait for SQL Server to be ready
MAX_ATTEMPTS=30
ATTEMPT=0

while [ $ATTEMPT -lt $MAX_ATTEMPTS ]; do
    
        # Fallback PHP connection test
        if php -r '
        try {
            $dsn = sprintf("sqlsrv:Server=%s,%s;Database=%s", getenv("DB_HOST") ?: "localhost", getenv("DB_PORT") ?: "1433", getenv("DB_DATABASE") ?: "cypress_test");
            $conn = new PDO($dsn, "sa", getenv("DB_PASSWORD"));
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo "PHP PDO connection successful!\n";
            exit(0);
        } catch(PDOException $e) {
            echo "PDO Connection failed: " . $e->getMessage() . "\n";
            exit(1);
        }
        '; then
            echo "Database connection successful!"
            exit 0
        fi
    
    echo "Connection attempt $ATTEMPT failed. Retrying in 20 seconds..."
    sleep 20
    ATTEMPT=$((ATTEMPT+1))
done

echo "Failed to connect to SQL Server after $MAX_ATTEMPTS attempts!"
exit 1
