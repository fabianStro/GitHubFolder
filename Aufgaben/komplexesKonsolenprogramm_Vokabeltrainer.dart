import 'dart:io';

Map<String, String> vocabularyList = {};

void main() {
  print('\n--> Welcome to the vocabulary trainer <--\n');
  choose();
}

//####################################################
// choose
//####################################################
void choose() {
  String selection;
  print('#############################################');
  print('What do you want to do?\n');
  print('1. Add new vocabulary');
  print('2. Check vocabulary');
  print('3. Finish/ Exit');

  do {
    stdout.write('\nYour choice: ');
    selection = stdin.readLineSync() ?? '';
    selection = selection.toLowerCase();
  } while (selection != 'add' && selection != 'check' && selection != 'exit');

  switch (selection) {
    case 'add':
      addEntries();
      break;
    case 'check':
      vocabularyTest();
      break;
    case 'exit':
    default:
      exit(0);
  }
}

//####################################################
// vocabularyTest
//####################################################
void vocabularyTest() {
  print('\n#############################################');
  print('Your Coice ist Check Vocabulary');
  print('\nVocabulary word\n');

  for (var entry in vocabularyList.entries) {
    print('${entry.key}');
    stdout.write('Your Answer: ');
    String answer = stdin.readLineSync() ?? '';
    if (answer == entry.value) {
      print('\nAnswer correct\n');
    } else {
      print('\nAnswer wrong\n');
    }
  }
  choose();
}

//####################################################
// addEntries
//####################################################
void addEntries() {
  String vocabulary, translation, more = 'yes';

  while (more == 'yes') {
    stdout.write('\nPlease enter word: ');
    vocabulary = stdin.readLineSync() ?? '';
    stdout.write('Please enter translation: ');
    translation = stdin.readLineSync() ?? '';
    stdout.write('\nMore: ');
    more = stdin.readLineSync() ?? '';
    more.toLowerCase();
    vocabularyList.addAll({vocabulary: translation});
  }
  choose();
  //showVocabularyList(vocabularyList);
}

//####################################################
// showVocabularyList()
//####################################################
void showVocabularyList(Map<String, String> vocabularyList) {
  print('\nVocabulary list');
  print('$vocabularyList\n');
}
