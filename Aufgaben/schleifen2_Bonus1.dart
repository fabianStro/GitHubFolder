import 'dart:io';

void main() {
  String word = 'AnNa'.toLowerCase();
  //String wordToLower = word.toLowerCase();
  int counter = 0;
  //String reversed = wordToLower.split('').reversed.join();
  bool isPalindrom = true;

  /*   
      print(reversed);
      print(word);
      print(wordToLower); 

      if (wordToLower == reversed) {
      print('$word ist ein Palindrom.');
      } else {
        print('$word ist KEIN Palindrom.');
      } 
  */
  for (int index = word.length - 1; index >= 0; index--) {
    /* stdout.write('Index: ${word[index]} \t');
    stdout.write('Counter: ${word[counter]}\n');
 */
    if (word[index] == word[counter]) {
      isPalindrom = true;
    } else {
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
