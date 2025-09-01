import 'dart:io';

Map<String, String> vocabularyList = {};
int score = 0;

void main() {
  print('\n--> Welcome to the vocabulary coach <--\n');
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
    if (selection != 'add' && selection != 'check' && selection != 'exit') {
      print('\nChoice incorrect.\n');
    }
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
      exit();
  }
}

//####################################################
// vocabularyTest
//####################################################
void vocabularyTest() {
  print('\n###########################################');
  print('Your Coice is Check Vocabulary');
  print('\nVocabulary word\n');

  for (var entry in vocabularyList.entries) {
    print('${entry.key}');
    stdout.write('Your Answer: ');
    String answer = stdin.readLineSync() ?? '';
    if (answer == entry.value) {
      print('\n!!! Answer correct !!!\n');
      score += 10;
    } else {
      print('\n??? Answer wrong ???\n');
    }
  }
  scoring();
}

//####################################################
// addEntries
//####################################################
void addEntries() {
  print('\n#############################################');
  print('Your choice is add words');
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
// exit
//####################################################
void exit() {
  print('\nCoach finished');
  print('BYE');
}

//####################################################
// scoring
//####################################################
void scoring() {
  int maxScore = 0;

  for (int index = 0; index <= vocabularyList.length - 1; index++) {
    maxScore += 10;
  }
  /*  print(vocabularyList.length);
  print('Your Score $score');
  print('Max Score $maxScore'); */
  double finalScore = (score / maxScore) * 100;
  String result = finalScore.toStringAsFixed(2);
  print('\nQuiz finished');
  print('\n--> Your score is $result % <--\n');

  choose();
}

//####################################################
// showVocabularyList
//####################################################
void showVocabularyList(Map<String, String> vocabularyList) {
  print('\nVocabulary list');
  print('$vocabularyList\n');
}
