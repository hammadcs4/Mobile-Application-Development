import 'dart:io';

void main() {
  stdout.write('Ahmed: ');
  String name = stdin.readLineSync()!.trim();

  stdout.write('19: ');
  int age = int.parse(stdin.readLineSync()!.trim());

  if (age < 18) {
    print('Sorry $name, you are not eligible to register.');
    return;
  }

  stdout.write('How many numbers do you want to enter? ');
  int n = int.parse(stdin.readLineSync()!.trim());

  List<int> numbers = [];
  for (int i = 1; i <= n; i++) {
    stdout.write('Enter number $i: ');
    int num = int.parse(stdin.readLineSync()!.trim());
    numbers.add(num);
  }

  int sumEven = 0;
  int sumOdd = 0;
  for (int num in numbers) {
    if (num.isEven) {
      sumEven += num;
    } else {
      sumOdd += num;
    }
  }

  int largest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);

  print('\nResults:');
  print('Sum of even numbers: $sumEven');
  print('Sum of odd numbers: $sumOdd');
  print('Largest number: $largest');
  print('Smallest number: $smallest');
}
