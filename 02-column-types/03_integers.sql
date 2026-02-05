-- ABOUT: Integers

-- These are the integer types in Postgres:

-- SMALLINT (2 bytes | 16 bits): -32,768 to 32,767
-- INT (4 bytes | 32 bits): -2,147,483,648 to 2,147,483,647
-- BIGINT (8 bytes | 64 bits): -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807

-- You can also use aliases:
-- int2 is the same as SMALLINT
-- int4 is the same as INT
-- int8 is the same as BIGINT

CREATE TABLE name_of_table (
    age SMALLINT CHECK (age > 0),
    account_balance BIGINT -535
);

-- ### Note: Postgres does not have a column type for unsigned integers.
-- If you want an integer column to only have positive values 
-- then you have to specify a check constraint when you create the table.

-------------------------------------------------------------------------------

-- Adding value to the table
INSERT INTO name_of_table (
    user_name, age, account_balance
) 
VALUES
    ('Jane', 30, 50),
    ('Ken', 20, 90),
    ('Lex', 10, 100);

INSERT INTO name_of_table (
    user_name, age, account_balance
) 
VALUES
    ('Max', -30, 50);

    
-------------------------------------------------------------------------------

SELECT * FROM name_of_table;

-- +-----------+-----+-----------------+
-- | user_name | age | account_balance |
-- |-----------+-----+-----------------|
-- | Jane      | 30  | 50              |
-- | Ken       | 20  | 90              |
-- | Lex       | 10  | 100             |
-- +-----------+-----+-----------------+

-------------------------------------------------------------------------------
