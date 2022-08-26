// extends para heredear propiedades y metodo de una clase 
// super() para llamar al constructor prade



abstract class Negocio{
  String nombre;
  bool rentable;
  String? ideaNegocio;

  Negocio(this.nombre, this.rentable);

  void mensajeMotivador(){
    print('No te rindas $nombre, recuerda que si no lo intentas ya perdiste');
  }

}

class Restaurante extends Negocio{


  Restaurante(String nombre, bool rentable): super(nombre, rentable);
  
  set ideaNegocioVerbal(String idea) => super.ideaNegocio = idea;

}
class CarWash extends Negocio{


  CarWash(String nombre, bool rentable): super(nombre, rentable);
  
  set ideaNegocioVerbal(String idea) => super.ideaNegocio = idea;

}

void main(List<String> args) {
  final Tochina = Restaurante('Miguel Sanchez', true);
  Tochina.mensajeMotivador();
  Tochina.ideaNegocioVerbal = 'Vender alimentos de buena calidad';
  print(Tochina.ideaNegocio);

  final Autobot = CarWash('Victor Herrera', true);
  Autobot.mensajeMotivador();
  print(Autobot.ideaNegocio);
  print(Autobot.rentable);

  tieneIdea(Tochina);
  tieneIdea(Autobot);
}

void tieneIdea(Negocio negocio)=> print(negocio.ideaNegocio);