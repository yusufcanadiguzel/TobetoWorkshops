void main() {
  //Kullanıcıdan gelicek parametre
  int counter = 20;

  for (int i = 1; i < counter; i++) {
    bool isPrime = true;
    if (i == 1) isPrime = false;

    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) print('$i asal sayıdır.');
  }
}
