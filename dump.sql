BEGIN TRANSACTION;
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE current_users (id INTEGER PRIMARY KEY, user_id NUMERIC);
CREATE TABLE events (id INTEGER PRIMARY KEY, Name String, Text TEXT );
CREATE TABLE advertisements (id INTEGER PRIMARY KEY, Name String, Text TEXT );
CREATE TABLE preferences (id INTEGER PRIMARY KEY, Name String, value String );
COMMIT;
