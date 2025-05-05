import 'package:flutter/material.dart';
import 'package:my_task/models/task_model.dart';

class NewAddTaskes extends StatelessWidget {
  const NewAddTaskes({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onRemove,
  });

  final TaskModel task;
  final void Function(TaskModel task) onToggle;
  final void Function(TaskModel task) onRemove;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(blurRadius: 2, blurStyle: BlurStyle.solid)],
        ),

        child: ListTile(
          title: Text(
            task.title,
            style: TextStyle(
              decoration: task.isCompleted ? TextDecoration.lineThrough : null,
              decorationThickness: 3,
              decorationColor: task.isCompleted ? Colors.black : Colors.grey,
            ),
          ),
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: task.isCompleted ? Colors.grey : Colors.black,
            fontWeight: FontWeight.bold,
          ),

          subtitle: Text(
            'Created: ${task.createdAt.year}/${task.createdAt.month.toString().padLeft(2, '0')}/${task.createdAt.day.toString().padLeft(2, '0')}',
          ),

          subtitleTextStyle: TextStyle(fontSize: 15, color: Colors.black),
          leading: Transform.scale(
            scale: 1.2,
            child: Checkbox(
              activeColor: Colors.green,
              value: task.isCompleted,
              onChanged: (value) {
                onToggle(task);
              },
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              onRemove(task);
            },
            icon: Icon(
              Icons.delete_outline_outlined,
              color: Colors.red,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
