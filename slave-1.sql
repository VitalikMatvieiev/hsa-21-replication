
CREATE TABLE test_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT id, name, email, created_at
FROM mydb.test_table;



CHANGE REPLICATION SOURCE TO
MASTER_HOST='mysql_master',
MASTER_USER='slave',
MASTER_PASSWORD='password',
MASTER_LOG_FILE='1.000003',
MASTER_LOG_POS=1312;

START REPLICA;
Stop Replica;
RESET SLAVE;

SHOW MASTER STATUS;
SHOW REPLICA STATUS;



SHOW VARIABLES LIKE 'log_error';
SELECT * FROM performance_schema.replication_applier_status_by_worker;

