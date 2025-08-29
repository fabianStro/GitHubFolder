import 'dart:io';

bool active = true;
Map<int, String> taskList = {};
String taskName = '';
//##################################################################
void main() {
  while (active == true) {
    showMenu();
    String selection = inpuDecision();
    checkSelection(selection);
  }
}

//##################################################################
showMenu() {
  print('\n - Aufgaben hinzufügen (add <beschreibung>)');
  print(' - Alle Aufgaben anzeigen (list)');
  print(' - Augaben als erledigtmakieren done <nummer>');
  print(' - Das Programm beenden (exit)');
}

//##################################################################
String inpuDecision() {
  stdout.write('Selection: ');
  String selection = stdin.readLineSync() ?? '';
  return selection;
}

//##################################################################
checkSelection(String selection) {
  if (selection == 'exit')
    exit();
  else if (selection == 'list')
    showTaskList(taskList);
  else if (selection == 'add')
    addTask();
  else if (selection == 'done')
    taskDone();
  else {
    print('!!! Falsche Eingabe !!!');
    exit();
  }
}

//##################################################################
showTaskList(Map<int, String> taskList) {
  print('\nListe der Aufgaben');
  if (taskList.isEmpty) {
    print('Noch keine Aufgaben vorhanden.');
  } else {
    print(taskList);
  }
}

//##################################################################
taskDone() {
  print('\nWelche Aufgabe wurde erledigt index angeben: ');
  int? completed;
  do {
    completed = int.tryParse(stdin.readLineSync() ?? '');
  } while (completed! > taskList.length);
  for (int counter = 1; counter <= taskList.length; counter++) {
    if (counter == completed) {
      taskList[counter] = '[X] ' + '\n';
    }
  }
}

//##################################################################
addTask() {
  print("\nTask Name");
  taskName = stdin.readLineSync() ?? '';
  int itemAvailable = taskList.length;
  int index = itemAvailable + 1;
  // String indexAsString = index.toString();
  taskList[index] = '\n[ ] ' + '$index' + ' ' + taskName + '\n';
  print('$taskName hinzugefügt');
  return taskList;
}

//##################################################################
void exit() {
  active = false;
  print("\nENDE\nTschüss");
}
//##################################################################