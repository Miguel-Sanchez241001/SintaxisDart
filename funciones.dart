final carro = 'Mercedes';


// argumentos para funciones
// sin argumentos 
bool IsMercedes(){
if (carro=='Mercedes') {
  return true;
}
  return false;
}
// con argumentos obligatorios
void tiempoCarro(String  carro){
  if (carro!="Mercedes") {
    print("su carro $carro es muy antiguo");
  }else{
    print('su $carro es nuevo');
  }
}
// con argumentos opcionales el parametro duracion es opcional
void placaValida(String serie,[int duracion = 7]){
if (serie.startsWith('abc') && duracion>=7) {
  print('su serie $serie es valida por $duracion');
}else{
  print('su $serie no es valida');
}
}
// con argumentos por nombre

// formas de requerir los argumentos
//void mayorEdad({String nombre = 'no name', int edad = 00}){   forma 1
void mayorEdad({
  required String nombre , 
  required int edad 
  }){ //forma 2
if (edad>=18) {
  print('$nombre eres mayor de edad ');
}else{
  print('$nombre te faltan ${(18 - edad)} para ser mayor de edad ');
}

}
void main(List<String> args) {
  print(IsMercedes());
  tiempoCarro(carro);
  placaValida('abc178',6);
  mayorEdad(nombre: 'Juan', edad: 18);
}