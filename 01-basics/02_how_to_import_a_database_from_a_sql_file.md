# How to import a database from a SQL file
_______________________________________________________________________________

Let say you have a file `name_of_the_database.sql`

Copy the `sql` file to the directory where the `psql` command is available.

Enter the `psql` prompt to perform adminstrative tasks 
on the Postgres cluster.
_______________________________________________________________________________

Turn on `Expanded display` to make the output of psql easier to read.

Run this command while logged into psql
```
\x
```

Note: This is not a SQL command, that is why it does 
not end with a semi colon.

This is a command to use a built-in functionality of Postgres.
_______________________________________________________________________________

Run this command. Don't add the file extension as part of the name.
```sh
CREATE DATABASE name_of_the_database;
```

This is a SQL command, it needs to end with a semicolon.
_______________________________________________________________________________

To confirm that your database was created, run this command:
```
\l
```

Press enter to scroll down or press `q` to quit viewing the output.
until you see the database record.

```
-[ RECORD 1 ]-----+--------------------------------
Name              | name_of_the_database
Owner             | dezlymacauley
Encoding          | UTF8
Locale Provider   | libc
Collate           | en_GB.UTF-8
Ctype             | en_GB.UTF-8
Locale            |
ICU Rules         |
Access privileges |
```
_______________________________________________________________________________

To clear the screen press `Ctrl and l`

If that does not work then type the command `\! clear` and press enter

_______________________________________________________________________________

Login to the database you just created
```
\c name_of_the_database
```
View the connection info to verify that you are connected to your database:
```sh
\conninfo
```

You should see an output like this:
```
-[ RECORD 1 ]-------------------
Parameter | Database
Value     | ds_af_mp_jan_2025
-[ RECORD 2 ]-------------------
Parameter | Client User
Value     | dezlymacauley
-[ RECORD 3 ]-------------------
Parameter | Host
Value     | 127.0.0.1
-[ RECORD 4 ]-------------------
Parameter | Server Port
Value     | 5432
```
_______________________________________________________________________________

Ensure that the name_of_the_database.sql file that contains the data,
is in the same directory as where you are running the `psql` command from:

```sh
\! ls
```

You should see the file listed there.
_______________________________________________________________________________

Import the data from the SQL file into the database
```
\i name_of_the_database.sql
```
_______________________________________________________________________________

To confirm that this worked, run this command:
```
\dt
```

This should show all of the tables in the database.

_______________________________________________________________________________

Type `\q` and press enter to exit the `psql` prompt

_______________________________________________________________________________
