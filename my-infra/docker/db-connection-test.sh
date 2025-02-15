#!/bin/bash

# Database connection test script
echo "Attempting to connect to SQL Server database..."

# Wait for SQL Server to be ready
MAX_ATTEMPTS=30
ATTEMPT=0

while [ $ATTEMPT -lt $MAX_ATTEMPTS ]; do
    
        # Fallback PHP connection test
        php -r '
        try {
            $conn = new PDO("sqlsrv:Server=sqlserver,1433;Database=master", "sa", "REDACTED");
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo "PHP PDO connection successful!\n";
            exit(0);
        } catch(PDOException $e) {
            echo "PDO Connection failed: " . $e->getMessage() . "\n";
            exit(1);
        }
        '
        
        if [ $? -eq 0 ]; then
            echo "Database connection successful!"
            exit 0
        fi
    fi
    
    echo "Connection attempt $ATTEMPT failed. Retrying in 20 seconds..."
    sleep 20
    ATTEMPT=$((ATTEMPT+1))
done

echo "Failed to connect to SQL Server after $MAX_ATTEMPTS attempts!"
exit 1