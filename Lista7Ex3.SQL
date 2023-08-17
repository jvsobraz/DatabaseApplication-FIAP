DECLARE
v_emp_rec emp%ROWTYPE;
BEGIN
SELECT * INTO v_emp_rec FROM emp
WHERE ename = ‘MILLER’;
INSERT INTO emps
(empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES
(v_emp_rec.empno, v_emp_rec.ename, v_emp_rec.job,
v_emp_rec.mgr, v_emp_rec.hiredate, v_emp_rec.sal,
v_emp_rec.comm, v_emp_rec.deptno);
END;
/
SELECT * FROM emps;
/