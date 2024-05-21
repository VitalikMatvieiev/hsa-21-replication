

CREATE TABLE test_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CHANGE REPLICATION SOURCE TO
MASTER_HOST='mysql_master',
MASTER_USER='slave',
MASTER_PASSWORD='password',
MASTER_LOG_FILE='1.000003',
MASTER_LOG_POS=1312;


START REPLICA;
Stop Replica;
RESET SLAVE;


SHOW REPLICA STATUS;

Alter table test_table 
Drop column email

Alter table test_table 
Drop column created_at