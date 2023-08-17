Declare
    v_dolar number (10,2) := 5.06;
    v_real v_dolar%type := v_dolar * 45;
Begin
    dbms_output.put_line('Cotação dólar 07/03/2022:' ||v_dolar);
    dbms_output.put_line('Conversão US$ 45.00 em R$::'||v_real);
end;