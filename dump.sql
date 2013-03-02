BEGIN TRANSACTION;
CREATE TABLE events (id INTEGER PRIMARY KEY, Name String, Text TEXT );
CREATE TABLE advertisements (id INTEGER PRIMARY KEY, Name String, Text TEXT );
CREATE TABLE users (id INTEGER PRIMARY KEY, role String, klass String, patronymic String, surname String, name String);
CREATE TABLE current_users (id INTEGER PRIMARY KEY, user_id NUMERIC);
CREATE TABLE list_of_items (id INTEGER PRIMARY KEY, items String);
CREATE TABLE Practic (id INTEGER PRIMARY KEY, kurs String, id_users NUMERIC, id_items NUMERIC, zachet String);
CREATE TABLE rating (id INTEGER PRIMARY KEY, kurs String, id_users NUMERIC, id_items NUMERIC, rating NUMERIC);
COMMIT;

