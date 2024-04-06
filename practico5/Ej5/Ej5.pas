program Ej5;
Uses CRT;
var
   saldoinicial, saldoactual, transaccion: real;
   tipodetransaccion: char;
begin 
  ClrScr;

  Writeln('Ingresar el saldo inicial de la cuenta: ');
  readln(saldoinicial);

  saldoactual := saldoinicial;

  repeat
     Writeln('Ingresar el tipo de transaccion (D para deposito), (R para retiro), (X para salir): ');
     readln(tipodetransaccion);

     case tipodetransaccion of 
     'D': begin
          writeln('Ingrese el monto del deposito: ');
          Readln(transaccion);
          saldoactual := saldoactual + transaccion;
          end;
     'R': begin
          writeln('Ingrese el monto a retirar: ');
          readln(transaccion);
          saldoactual := saldoactual - transaccion;
          end;
     'X': writeLn('Saliendo del programa....');
     else writeln('Tipo de trasaccion invalido. Porfavor, ingrese D, R o X.');
     end;
   writeln('El saldo actual de la cuenta es: ', saldoactual:0:2);
   until tipodetransaccion = 'X';
   writeln('El saldo final de la cuenta es: ', saldoactual:0:2);
end.             
      
