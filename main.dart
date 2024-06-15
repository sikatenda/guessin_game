import 'dart:io';
import 'dart:math';

main() {
  Random random = new Random();

  print('Enter your guessing number:');
  var number = stdin.readLineSync();
  var numberConverted = int.parse(number ?? '0');

  for (int a = 1; a <= 3; a++) {
    var rand = random.nextInt(5) + 1;
    if (rand == numberConverted) {
      print('Congatulations you guessed the right number !');
      print('The number picked by the computer is $rand');
      break;
    } else {
      print("Attempt $a failled!!!");
      print('You guessed the wrong number !');
      print('The number picked by the computer is $rand');
      if (a == 3) {
        break;
      }
    }

    print(" ");
    print('Enter your guessing number once again: ');
    number = stdin.readLineSync();
  }
}
