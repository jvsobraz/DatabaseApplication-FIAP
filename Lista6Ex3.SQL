BEGIN
FOR i IN 1..10 LOOP
IF i = 6 or i = 8 THEN
null;
ELSE
INSERT INTO messages(results)
VALUES (i);
END IF;
COMMIT;
END LOOP;
END;
/