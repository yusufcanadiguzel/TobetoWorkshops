import 'dart:math';

void main() {
  int number = 153;

  List<int> numbers = [];
  int total = 0;
  int counter = 0;
  int checkNumber = number;

  while (number > 0) {
    numbers.add(number % 10);
    number = ((number - number % 10) / 10).toInt();
    counter++;
  }

  for (int x in numbers) {
    total += pow(x, counter).toInt();
  }

  if (total == checkNumber)
    print('Girilen değer Armstrong sayısıdır.');
  else
    print('Girilen değer Amstrong sayısı değildir.');
}