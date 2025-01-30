program PunterosEj3;
type
    { Declara un tipo de registro llamado â€œnodoâ€� con dos campos: un entero y un puntero a â€œnodoâ€� }
    TREC= RECORD
    	ENT: INTEGER;
    	PRT: ^INTEGER;
	END;

var
    REC: TREC;

begin
    { Crea un nodo en memoria dinÃ¡mica (heap) }


    { Dale valor 100 al campo entero de este nodo }


    { Pon a nil el campo puntero del nodo }


    { Pon ahora el puntero del nodo a apuntar al propio nodo }


    { En este punto hay dos instrucciones alternativas para liberar la memoria dinÃ¡mica creada: }
    { Alternativa 1: Liberar el nodo directamente }


    { Alternativa 2: Liberar el nodo a travÃ©s del campo puntero }
    { Dispose(punteroNodo^.siguiente); }

    { Termina }
end.
