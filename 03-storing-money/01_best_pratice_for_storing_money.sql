-- ABOUT: Best practice for storing money

-------------------------------------------------------------------------------

-- SECTION: Picking the best data type

-- Using `numeric` as the data type of the column is best if you
-- want maximun accuracy. 
-- The downside is that this data type is not the most performant.

-- That's why the best practice for storing money is to use the lowest common
-- denomination of a currency, and then store that value as a BIGINT.

-- E.g. If you are trying to store $215.78 US dollars

-- The lowest common denomination of a dollars is cents
-- 1 dollar = 100 cents
-- Therefore...
-- 1 dollar * 100 = 100 cents

-- So to add 215.78 dollars to column in a table, 
-- you need to convert the amount in dollars to cents:
-- 215.78 dollars * 100 = 21578 cents

-- Next store 21578 in your table as an integer
-- E.g. minor_unit

-- The most widely accepted, precise term is “minor unit” 
-- it’s the ISO 4217 term for the smallest usable unit of a currency.

-- When you need to retrieve the data then you would convert 
-- it back to dollars:
-- 21578 cents / 100 = $215.78 
-- 215 us dollars, and 78 cents

-------------------------------------------------------------------------------

-- SECTION: Storing Multiple Currencies

-- Create a separate column that stores the value next to the currency.
-- E.g. Currency codes have 3 letters like 'USD', 'EUR', 'JPY'
-- currency symbol CHAR(3)

-------------------------------------------------------------------------------

CREATE TABLE donations (
    user_name TEXT NOT NULL,
    currency_code CHAR(3) NOT NULL,
    minor_unit BIGINT NOT NULL
);

-------------------------------------------------------------------------------

INSERT INTO donations 
    (user_name, currency_code, minor_unit)
VALUES
    -- $215.78
    ('Alice', 'USD', 21578),       
    
    -- €180.00
    ('Bob', 'EUR', 18000),
    
    -- ¥3000
    ('Charlie', 'JPY', 3000),
    
    -- £125.50
    ('Diana', 'GBP', 12550),   
    
    -- ₩50000
    ('Eve', 'KRW', 50000);     

-------------------------------------------------------------------------------

-- +-----------+---------------+------------+
-- | user_name | currency_code | minor_unit |
-- |-----------+---------------+------------|
-- | Alice     | USD           | 21578      |
-- | Bob       | EUR           | 18000      |
-- | Charlie   | JPY           | 3000       |
-- | Diana     | GBP           | 12550      |
-- | Eve       | KRW           | 50000      |
-- +-----------+---------------+------------+

-------------------------------------------------------------------------------
