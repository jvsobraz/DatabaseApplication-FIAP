DECLARE
  fname employees.first_name%TYPE;
  emp_sal employees.salary%TYPE;
BEGIN
  SELECT first_name, salary
  INTO fname, emp_sal
  FROM employees
  WHERE employee_id = 110;

  dbms_output.put_line(fname || ' recebe o salario de ' || emp_sal);
  
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('Nenhum funcionário encontrado com o código 110.');
  WHEN OTHERS THEN
    dbms_output.put_line('Um erro ocorreu!);
END;