import 'package:flutter/material.dart';
import 'package:my_task/models/task_model.dart';
import 'package:my_task/widgets/empty_tasks_state.dart';
import 'package:my_task/widgets/new_add_tasks.dart';

class NewTask extends StatelessWidget {
  const NewTask({
    super.key,
    required this.tasks,
    required this.onToggle,
    required this.onRemove,
  });
  final List<TaskModel> tasks;
  final void Function(TaskModel task) onToggle;
  final void Function(TaskModel task) onRemove;

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return EmptyTasksState();
    }
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return NewAddTaskes(task: task, onToggle: onToggle, onRemove: onRemove);
      },
    );
  }
}
