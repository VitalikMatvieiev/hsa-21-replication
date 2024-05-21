#### Replications
Case 1 - stop first container - slave

It will add all new changes after you will switch it on again.

Case - 2 delete last column in table

Work without changes, just without last column in table.

Case - 3 delete middele element in table

```
2024-05-21 15:20:28 2024-05-21T20:20:28.862401Z 7 [ERROR] [MY-013146] [Repl] Replica SQL for channel '': Worker 1 failed executing transaction 'ANONYMOUS' 
at source log 1.000003, end_log_pos 29183; 
Column 2 of table 'mydb.test_table' cannot be converted from type 'varchar(400(bytes))' to type 'timestamp', Error_code: MY-013146
```

```
2024-05-21 15:20:28 2024-05-21T20:20:28.866960Z 6 [Warning] [MY-010584] [Repl] Replica SQL for channel '': ... 
The replica coordinator and worker threads are stopped, possibly leaving data in inconsistent state. A restart should restore consistency automatically, 
although using non-transactional storage for data or info tables or DDL queries could lead to problems. In such cases you have to examine your data (see documentation for details). 
Error_code: MY-001756
```