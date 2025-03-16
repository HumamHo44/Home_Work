// Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
// use of for-each loops.
// .___________________________________________________________________.
//                        |Answer|

import 'dart:io';

void main() {
  List<Map<String, dynamic>> tasks = [];
  addTask(tasks);
  print(tasks);
  removeTask(tasks);
  print(tasks);
  updateTask(tasks);
  print(tasks);
  displayTasks(tasks);
}

// Add a task
void addTask(List<Map<String, dynamic>> tasks) {
  print('Enter the task:');
  String? description = stdin.readLineSync();

  print('Enter the due date (example: 2025-3-15):');

  String? dueDate = stdin.readLineSync();
  print('Enter task status(true / false ):');
  String? isCompleted = stdin.readLineSync();

  if (description != null &&
      description.isNotEmpty &&
      dueDate != null &&
      dueDate.isNotEmpty) {
    tasks.add({
      'description': description,
      'dueDate': dueDate,
      'isCompleted': isCompleted,
    });
  } else {
    print('Please enter the data correctly');
  }
}

// Delete a task
void removeTask(List<Map<String, dynamic>> tasks) {
  print('Enter the task you want to delete.');
  String? description = stdin.readLineSync();
  if (description != null && description.isNotEmpty) {
    tasks.removeWhere((index) => index['description'] == description);
    print('The task has been deleted:');
  } else {
    print('No task entered for deletion');
  }
}

// Update a task
void updateTask(List<Map<String, dynamic>> tasks) {
  print('Please enter a description of the task you want to update:');
  String? description = stdin.readLineSync();
  if (description != null && description.isNotEmpty) {
    var task = tasks.firstWhere((task) => task['description'] == description);

    print('To update the task description, select one number.');
    print('To update the due date, enter the number two.');
    print('To update the completion status, enter number three.');

    String? taskChanging = stdin.readLineSync();
    if (taskChanging == '1') {
      print('Enter a new description:');
      String? newDescription = stdin.readLineSync();
      if (newDescription != null && newDescription.isNotEmpty) {
        task['description'] = newDescription;
        print('The mission description has been updated.');
      } else {
        print('No new description has been entered.');
      }
    } else if (taskChanging == '2') {
      print('Enter a new entitlement:');
      String? newDueDate = stdin.readLineSync();
      if (newDueDate != null && newDueDate.isNotEmpty) {
        task['dueDate'] = newDueDate;
        print('Eligibility status updated');
      } else {
        print('No new entitlement has been entered.');
      }
    } else if (taskChanging == '3') {
      print('Is the neglected complete?(true / false)');
      String? completionStatus = stdin.readLineSync();
      if (completionStatus != null && completionStatus.isNotEmpty) {
        task['isCompleted'] = completionStatus;
        print('Status updated');
      }
    } else {
      print('No new case has been entered.');
    }
  }
}

// To view tasks
void displayTasks(List<Map<String, dynamic>> tasks) {
  if (tasks.isEmpty) {
    print('There are no tasks to display.');
  } else {
    tasks.forEach((task) {
      print("${task['description']} ${task['dueDate']} ${task['isCompleted']}");
    });
  }
}
