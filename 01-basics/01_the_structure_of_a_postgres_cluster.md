### The structure of a PostgreSQL cluster

A PostgreSQL cluster (sometimes referred to as a PostgreSQL instance), 
is a collection of databases managed by 
a single running PostgreSQL server process. 

All the databases in a cluster share 
the same data directory on the file system.

A PostgreSQL Cluster can run multiple databases simultaneously.
Each database is logically isolated 
but shares the same server process and data directory.

You can use one user to connect to multiple databases at the same time,
and query multiple databases at the same time but the catch is that you
need to open a new terminal session for each connection.

_______________________________________________________________________________

### A Postgres Database

Each database can have multiple tables.

A database can also have multiple schemas. 
Think of a schemas as a category label that is used to group several 
tables together.

By default each database will have one schema (one category) called `public`,
and all tables wil be placed inside this category.

```
.
├── database_a
│   └── public
│       ├── table_01
│       ├── table_02
│       ├── table_03
│       ├── table_04
│       └── table_05
├── database_b
│   └── public
│       ├── table_01
│       ├── table_02
│       ├── table_03
│       ├── table_04
│       └── table_05
└── database_c
    └── public
        ├── table_01
        ├── table_02
        ├── table_03
        ├── table_04
        └── table_05
```
