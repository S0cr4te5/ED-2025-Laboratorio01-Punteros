program PunterosEj2;
var
Arr: Array [0..2] of INTEGER;
i: INTEGER;
ptr: ^INTEGER;

begin
    { Crea un array de 3 enteros V e inicialÃ­zalo con nÃºmeros aleatorios. }
    RANDOMIZE;
	FOR i:= 0 to 2 do
		Arr[i]:= random(100);

    { Muestra sus valores por pantalla }
	FOR i:= 0 to 2 do
		WRITELN(Arr[i]);

    { Declara un puntero a entero p y ponlo a apuntar a la primera posiciÃ³n del array }
	ptr:=@Arr[0];

    { Pon el valor 100 en el entero apuntado por p }
	ptr^:=100;

    { Muestra los valores del array â€œVâ€� por pantalla }
	FOR i:= 0 to 2 do
		WRITELN(Arr[i]);

    { Recorre con p todas las posiciones del array para ponerlas todas a cero }
	FOR i:= 0 to 2 do
		BEGIN
		ptr:=@Arr[i];
		ptr^:=0;
		END;

    { Muestra los valores del array â€œVâ€� por pantalla }
	FOR i:= 0 to 2 do
		WRITELN(Arr[i]);
	dispose(ptr);
		READLN;
end.
