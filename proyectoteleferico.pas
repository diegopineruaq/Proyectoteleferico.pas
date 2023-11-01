program ControlBoletosTeleferico;

var
  capacidadMaxima: integer;
  opcion: char;
  numBoletosGeneral, numBoletosIdaVuelta, numBoletosCancelados: integer;
  numBoletosNinos, numBoletosTerceraEdad: integer;
  montoTotalVentas: real;

procedure VenderBoletos();
var
  nombre, apellido, cedula, estacion, tramo, tipoBoleto: string;
  cantidad, edadNino: integer;
  montoVenta: real;
begin
  writeln('Venta de boletos:');
  writeln('Ingrese el nombre: ');
  readln(nombre);
  writeln('Ingrese el apellido: ');
  readln(apellido);
  writeln('Ingrese la cédula: ');
  readln(cedula);
  writeln('Ingrese la estación (1-5): ');
  readln(estacion);
  writeln('Ingrese el tramo (A, B, C o D): ');
  readln(tramo);
  writeln('Ingrese la cantidad de boletos: ');
  readln(cantidad);
  writeln('Ingrese el tipo de boleto (general, ninos, terceraedad): ');
  readln(tipoBoleto);
  
  case tipoBoleto of
    'general': begin
      montoVenta := cantidad * 20.0;
      numBoletosGeneral := numBoletosGeneral + cantidad;
    end;
    'ninos': begin
      writeln('Ingrese la edad del niño: ');
      readln(edadNino);
      if edadNino <= 3 then begin
        montoVenta := 0.0;
      end
      else if (edadNino > 3) and (edadNino <= 12) then begin
        montoVenta := cantidad * 12.0;
      end;
      numBoletosNinos := numBoletosNinos + cantidad;
    end;
    'terceraedad': begin
      montoVenta := cantidad * 12.0;
      numBoletosTerceraEdad := numBoletosTerceraEdad + cantidad;
    end;
  end;
  
  montoTotalVentas := montoTotalVentas + montoVenta;
  
  writeln('Boletos vendidos exitosamente.');
end;

procedure VerSistema();
var
  numBoletosDisponibles: integer;
begin
  writeln('Número de boletos vendidos:');
  writeln('===========================');
  writeln('Boletos generales: ', numBoletosGeneral);
  writeln('Boletos sencillos de ida/vuelta: ', numBoletosIdaVuelta);
  writeln('Boletos cancelados: ', numBoletosCancelados);
  writeln('Boletos niños: ', numBoletosNinos);
  writeln('Boletos tercera edad: ', numBoletosTerceraEdad);
  
  numBoletosDisponibles := capacidadMaxima - numBoletosGeneral - numBoletosIdaVuelta;
  
  writeln('===========================');
  writeln('Número de asientos disponibles: ', numBoletosDisponibles);
  writeln('===========================');
  writeln('Reporte de ventas del día:');
  writeln('Monto total de las ventas: $', montoTotalVentas:0:2);
end;

begin
  capacidadMaxima := 60;
  opcion := ' ';
  numBoletosGeneral := 0;
  numBoletosIdaVuelta := 0;
  numBoletosCancelados := 0;
  numBoletosNinos := 0;
  numBoletosTerceraEdad := 0;
  montoTotalVentas := 0.0;
  
  while opcion <> 's' do
  begin
    writeln('===========================');
    writeln('Estación de Teleférico de Mérida');
    writeln('===========================');
    writeln('Seleccione una opción:');
    writeln('1. Comprar boletos');
    writeln('2. Ver sistema');
    writeln('0. Salir');
    readln(opcion);
    
    case opcion of
      '1': VenderBoletos();
      '2': VerSistema();
      '0': writeln('Saliendo del programa...');
      else writeln('Opción inválida. Intente nuevamente.');
    end;
  end;
end.

























































































































































































































































































































































































































































