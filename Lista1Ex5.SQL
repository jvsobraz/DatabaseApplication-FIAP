Declare
    v_carro number(10,2) := 50000;
    v_valor_final v_carro%type := (v_carro * 1.03) / 10;
Begin
    dbms_output.put_line('Valor do bem: ' ||v_carro);
    dbms_output.put_line('Valor da prestação em 10x: '||v_valor_final);
end;