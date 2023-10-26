import 'dart:math';

void main() {
  int number = 153;

  var result = isArmstrong(number);

  result
      ? print('Girilen değer Armstrong sayısıdır.')
      : print('Girilen değer Amstrong sayısı değildir.');
}

bool isArmstrong(int number) {
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
    return true;
  else
    return false;
}
