CREATE USER 'slave'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT REPLICATION SLAVE ON *.* TO 'slave'@'%';
FLUSH PRIVILEGES;

SHOW MASTER STATUS; 

mysqldump -u root -p mydb > mydb1.sql

docker cp /Users/vitalijmatveev/Downloads/mydb1.sql fdb05f3f7019f5d24bb75f34b927a91545475428fcdf98b00ce1f2212a601981:/mydb1.sql

mysql -u root -p mydb < mydb1.sql


CREATE TABLE test_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

FLUSH TABLES WITH READ LOCK;
SHOW MASTER STATUS;
1.000003 | 1312 | mydb

UNLOCK TABLES;

SHOW MASTER STATUS;

CREATE USER 'slave' IDENTIFIED WITH mysql_native_password BY 'password';


