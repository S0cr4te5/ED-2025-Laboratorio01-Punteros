program PunterosEj1;

var
    x: INTEGER;
    P_ent: ^integer;

begin
	{ Declara variable entera (x) }
    { Declara una variable de tipo puntero a entero (p_ent) }
    { Da el valor 100 a x }
	x:=100;
    { Crea un entero din�micamente con p_ent y dale el valor que tiene actualmente x }
    new(P_ent);
    p_ent^:=x;
    { Imprime por pantalla el valor contenido en el entero al que apunta p_ent }
	WRITELN(p_ent^);
    { Crea con new un nuevo entero dinámicamente }
	new(P_ent);
    { Imprime por pantalla el valor contenido en el entero al que apunta p_ent }
	WRITELN(p_ent^);
    { Pon el puntero p_ent a apuntar a x }
	dispose(p_ent);
	P_ent:=@x;
    { Súmale 100 al entero apuntado por el puntero p_ent }
	P_ent^:=P_ent^+100;
    { Imprime por pantalla el valor de x y también del entero al que apunta p_ent }
	WRITELN(x);
	WRITELN(p_ent^);
    { Pon el puntero p_ent a NIL }
	P_ent:=NIL;
    { Libera la memoria asociada al nuevo entero }
	dispose(p_ent);
    { Suma 100 a x pero sin usar x en la operación de suma (solo usando p_ent) }
	P_ent:=@x;
	P_ent^:=P_ent^+100;
	P_ent:=NIL;
    { Muestra por pantalla que son iguales }
	WRITELN(p_ent^);
    { Libera toda la memoria asociada a p_ent y termina }
	dispose(p_ent);
	READLN();

end.
