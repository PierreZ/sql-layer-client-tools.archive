CREATE TABLE t(id INT);
INSERT INTO t VALUES (1);
BEGIN;
INSERT INTO t VALUES (2);
SELECT * FROM t;
ROLLBACK;
SELECT * FROM t;
BEGIN;
UPDATE t SET id=2 WHERE id=1;
COMMIT;
SELECT * FROM t;
