DECLARE
v_empno emp.empno%TYPE := &p_empno;
v_sal emp.sal%TYPE;
v_comm emp.comm%TYPE;
BEGIN
SELECT sal
INTO v_sal
FROM emp
WHERE empno = v_empno;
IF v_sal < 1000 THEN
v_comm := .10;
ELSIF v_sal BETWEEN 1000 and 1500 THEN
v_comm := .15;
ELSIF v_sal > 1500 THEN
v_comm := .20;
ELSE
v_comm := 0;
END IF;
UPDATE emp
SET comm = NVL(sal,0) * v_comm
WHERE empno = v_empno;
COMMIT;
END;
/