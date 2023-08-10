DECLARE
    valor_dolar NUMBER;
    cambio CONSTANT NUMBER := 2.98;
    valor_reais NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Digite o valor em dólares:');
    DBMS_OUTPUT.GET_LINE(valor_dolar);
    
    valor_reais := valor_dolar * cambio;
    
    DBMS_OUTPUT.PUT_LINE('Valor em dólares: $' || TO_CHAR(valor_dolar, '999.99'));
    DBMS_OUTPUT.PUT_LINE('Câmbio: ' || TO_CHAR(cambio, '999.99'));
    DBMS_OUTPUT.PUT_LINE('Valor em reais: R$ ' || TO_CHAR(valor_reais, '999.99'));
END;
/
