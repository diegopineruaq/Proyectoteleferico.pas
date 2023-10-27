# Proyectoteleferico.pas
program BoletosTeleferico;
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
  writeln('Ingrese la edad del niño');
  readln(edadNino);
end.
