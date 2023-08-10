set serveroutput on

Declare
    v_sal_atual number(10,2) :=1302.00;
    v_sal_reaj number(10,2);
Begin
    v_sal_reaj := v_sal_atual * 1.25;
    dbms_output.put_line('Salário atual - R$: ' ||v_sal_atual);
    dbms_output.put_line('Salário reajustado - R$ '||v_sal_reaj);
end;