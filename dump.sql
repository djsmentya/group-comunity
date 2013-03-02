BEGIN TRANSACTION;
CREATE TABLE users (role String, klass String, patronymic String, surname String, id INTEGER PRIMARY KEY, name String);
CREATE TABLE current_users (id INTEGER PRIMARY KEY, user_id NUMERIC);
CREATE TABLE list_of_items (id INTEGER PRIMARY KEY, items String);
CREATE TABLE Practic (kurs String, id INTEGER PRIMARY KEY, id_users NUMERIC, id_items NUMERIC, zachet String);
CREATE TABLE rating (kurs String, id INTEGER PRIMARY KEY, id_users NUMERIC, id_items NUMERIC, rating NUMERIC);
COMMIT;

