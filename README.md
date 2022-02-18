# Bookmark_challenge_evening_morning

Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql


To set up a test database, let's run psql and create a database, and use the SQL query saved in db/migrations/01_create_bookmarks_table.sql to create a bookmarks table.

$> psql
admin=# CREATE DATABASE "bookmark_manager_test";
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

Now, if we list databases (in psql or by looking in TablePlus), we'll see two databases for our application: bookmark_manager, and the new bookmark_manager_test database.