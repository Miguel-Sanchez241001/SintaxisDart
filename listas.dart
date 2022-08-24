
List<int> numeros =  [11,12,13,14,15,16];

void main(List<String> args) {
  print(numeros);
  numeros.add(18);
  print(numeros);

  final primos = List.generate(10, (index) =>
  index*index );
  print(primos);
}