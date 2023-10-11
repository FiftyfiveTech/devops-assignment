-- for Indexing
CREATE INDEX index_users ON users (username, email);

-- for Caching
SET GLOBAL query_cache_size = 268435456;
-- Enable the query cache
SET GLOBAL query_cache_type = 1;

-- for Database Configuration Optimization
SET GLOBAL innodb_buffer_pool_size = 5368709120;

-- For handling sensitive information like passwords, it's better to use environment variables during runtime.
-- Pass sensitive information as build arguments
-- ARG MYSQL_ROOT_PASSWORD
-- ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

