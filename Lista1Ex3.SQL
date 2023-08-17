DECLARE
    salario_atual NUMBER;
    aumento_pct CONSTANT NUMBER := 0.25; -- 25% de aumento
    novo_salario NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Digite o valor do salário atual:');
    DBMS_OUTPUT.GET_LINE(salario_atual);
    
    novo_salario := salario_atual * (1 + aumento_pct);
    
    DBMS_OUTPUT.PUT_LINE('Salário atual: R$ ' || TO_CHAR(salario_atual, '999.99'));
    DBMS_OUTPUT.PUT_LINE('Aumento de ' || TO_CHAR(aumento_pct * 100, '999.99') || '%');
    DBMS_OUTPUT.PUT_LINE('Novo salário mínimo: R$ ' || TO_CHAR(novo_salario, '999.99'));
END;
/
