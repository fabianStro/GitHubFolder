import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input == null) {
    print('Keine Eingabe erhalten.');
    return;
  }
  String word = input.toLowerCase();
  int counter = 0;
  bool isPalindrom = true;
  /*
    String reversed = wordToLower.split('').reversed.join();   
      print(reversed);
      print(word);
      print(wordToLower); 

      if (word == reversed) {
      print('$word ist ein Palindrom.');
      } else {
        print('$word ist KEIN Palindrom.');
      } 
  */
  for (int index = word.length - 1; index >= 0; index--) {
    /* stdout.write('Index: ${word[index]} \t');
    stdout.write('Counter: ${word[counter]}\n');
 */
    if (word[index] != word[counter]) {
      isPalindrom = false;
      break;
    }
    counter++;
  }

  if (isPalindrom) {
    print('Ist EIN Palindrom !!!');
  } else {
    print('Ist KEIN Palindrom !!!');
  }
}
