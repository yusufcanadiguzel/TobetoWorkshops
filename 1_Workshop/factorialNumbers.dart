void main() {
  //Kullanıcıdan alınacak parametre
  int number = 12;
  int total = number;

  for (int i = number - 1; i > 0; i--) {
    total *= i;
  }

  print('Faktöriyel: $total');
}
