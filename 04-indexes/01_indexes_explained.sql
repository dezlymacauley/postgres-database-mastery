-- ABOUT: Indexes

-- You can improve the speed of a database query by creating an index,
-- on a collumn in a table.

-- Indexes are a separate data structure from your table.

-- You define an index on a table and then it creates 
-- a second data structure that is optimized for performing a certain query
-- An index maintains a copy of a part of that table.

-- Each index contains a pointer back to the original table,
-- so that it can get the full row.

-- Every time the data changes in the original,
-- there is a maintainance cost because the index 
-- will be updated by Postgres. This includes updating the index with the
-- new values, and then re-ordering the values in the index.

-- This is why you should be strategic when creating an index,
-- If you just put indexes everywhere this can actually make your database
-- queries slower.

-- The most common data structure for an index is a B-tree
