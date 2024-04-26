import 'dart:io';
import 'dart:math';

void main() {
  // startGame();

  // bool continuePlay = true;

  // while (continuePlay) {
  //   int result = gameBones();
  //   print('Выпало $result');
  //   print('Введите 1, чтобы бросить еще раз, или 2, чтобы закончить:');
  //   int number1 = int.parse(stdin.readLineSync()!);

  //   if (number1 == 1) {
  //     continue;
  //   } else if (number1 == 2) {
  //     print('wasted');
  //     break;
  //   } else {
  //     print('error');
  //   }
  // }

testFunc();

// testFunc1(5);
}

startGame() {
// 1) Создать функцию, которая запрашивает у пользователя ответ на пример a + b = ?
// Нужно создать две переменные a и b, которые генерируются с помощью рандома.
// Также нужна переменная которая записывает результат(сложение переменных a и b).
// Затем вы вводите ответ с клавиатуры. Компьютер сравнивает ответы.
// Если вы ответили правильно, то вывести на экран «Правильно!».
// Если вы ответили неправильно, то заново вызвать функцию.

  Random random = Random();

  int a = random.nextInt(100) + 1;
  int b = random.nextInt(100) + 1;
  int c = a + b;

  print('Решите пример $a + $b = ?');

  int userAnswer = int.parse(stdin.readLineSync()!);

  if (userAnswer == c) {
    print('Правильно');
  } else {
    print('Неправильно, попробуйте заново !');
    startGame();
  }
}

gameBones() {
// 2) Создать функцию, которая бросает игральную кость(нарды).
// Затем вы вводите ответ с клавиатуры: 1- бросить еще раз, 2 - закончить.
// Если вы введете 1, то функция вызывается заново,
// Если вы введете 2, то вывести на экран «wasted»

  Random random = Random();

  int number = random.nextInt(100) + 1;

  return number;
}

testFunc() {
//   3) Создать функцию, которая возводит введенное вами число в введенную вами степенью,
// т.е. Ваша функция принимает два параметра a и b.

  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  print(pow(a, b));
}

void testFunc1(int n) {

print('n = $n');

  if (n == 1) {
    print(n);
  } else {
    testFunc1(n - 1);
    print(n);
  }
}
