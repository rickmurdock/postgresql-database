CREATE TABLE todos (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details TEXT NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
  ('fishing', 'go fishing with live bait', 1, '2017-01-01 03:12:16', NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
  ('JavaScript', 'Read Douglas Crockfords JavaScript the Good Parts', 3, '2017-02-07 06:12:18', NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
  ('cut grass', 'cut the dang lawn when it stops raining', 1, '2017-06-09 09:42:28', '2017-06-10 15:45:38');

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
  ('sleep', 'stop coding and go to sleep', 7, '2017-06-11 10:43:28', NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
  ('graduate', 'Graduate from The Iron Yard', 2, '2017-08-11 12:43:28', NULL);

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-03-15 12:00:00' WHERE id = 2;

DELETE FROM todos WHERE completed_at IS NOT NULL;