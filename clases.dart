
// clase propiedades y metodos 
class Humano {
int edad ;
String nombre;
int cantidadDeAmigos;
// constructor forma de inicializacion de propeidades
Humano({
  required this.cantidadDeAmigos,
  required this.edad,
  required this.nombre});
// constructor que recibe un mapa con la inicializacion de la propiedades
Humano.fromJson(  Map<String,dynamic> json):
this.cantidadDeAmigos = json['amigos'] ?? 00,
this.edad = json['edad'] ?? 00,
this.nombre = json['nombre'] ?? 'no name';



@override
  String toString() {
    // TODO: implement toString
    return 'Soy $nombre tengo $edad y unass $cantidadDeAmigos personas son mis amigos ';
  }
}

void main(List<String> args) {
// creacion de objetos
Humano Victor = new Humano(cantidadDeAmigos: 18, edad: 15, nombre: 'Victor'); // forma 1
final Julio = Humano(cantidadDeAmigos: 2, edad: 20, nombre: 'Miguel');
Map<String,dynamic> json = {
  'nombre': 'mario',
  'edad': 18,
  'amigos': 10
};
final n2 = {
  'a':14
};
final Andres = Humano.fromJson(json);
final n = Humano.fromJson(n2);
print(Victor.toString());
print(Julio.toString());
print(Andres.toString());
print(n.toString());
}