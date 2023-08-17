DECLARE
v_empno emp.empno%TYPE := &p_empno;
v_asterisk emp.stars%TYPE := NULL;
v_sal emp.sal%TYPE;
BEGIN
SELECT NVL(ROUND(sal/100), 0)
INTO v_sal
FROM emp
WHERE empno = v_empno;
FOR i IN 1..v_sal LOOP
v_asterisk := v_asterisk ||'*';
END LOOP;
UPDATE emp
SET stars = v_asterisk
WHERE empno = v_empno;
COMMIT;
END;
/