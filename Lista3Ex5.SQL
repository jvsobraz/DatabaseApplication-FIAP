DECLARE
  fname employees.first_name%TYPE;
  emp_sal employees.salary%TYPE;
  pp NUMBER(10,2);
BEGIN
  SELECT first_name, salary
  INTO fname, emp_sal
  FROM employees
  WHERE employee_id = 110;

  pp := emp_sal * 0.45 * 0.12; -- cálculo da contribuição para a previdência privada

  dbms_output.put_line('Olá, ' || fname);
  dbms_output.put_line('Seu salário é: ' || emp_sal);
  dbms_output.put_line('Sua contribuição a previdência é: ' || pp);
  
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('Nenhum funcionário encontrado com o código 110.');
  WHEN OTHERS THEN
    dbms_output.put_line('Um erro ocorreu: ' || SQLCODE || ' - ' || SQLERRM);
END;