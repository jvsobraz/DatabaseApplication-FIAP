Declare
    v_carro number(10,2) := 50000 * 0,8;
    v_presta v_carro%type;
Begin
    v_presta := (v_carro * 1.1) / 6;
    dbms_output.put_line('Valor da prestação em 6x: '||v_presta);
    v_presta := (v_carro * 1.15) / 12;
    dbms_output.put_line('Valor da prestação em 12x: '||v_presta);
    v_presta := (v_carro * 1.2) / 18;
    dbms_output.put_line('Valor da prestaçãoe em 18x: '||v_presta);
end;