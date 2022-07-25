class Bicycle {
  int _cadence  = 0 ;
  int _speed;
  int gear;
  Bicycle( this.gear) : _speed = gear;

  @override
  String toString() => 'Bicycle: $_speed mph';

  int get speed => _speed;
  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
   set cadence (int value)=> _cadence = value;
  int get mostroCadence => _cadence;
}

void main() {
  var bike = Bicycle(2);
  print(bike.toString());
  print(bike.speed);
  bike.applyBrake(-11);
  bike.cadence = 14;
  print(bike.speed);
  print(bike.mostroCadence);
  
}
