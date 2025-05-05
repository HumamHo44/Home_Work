import 'package:flutter/material.dart';

class EmptyTasksState extends StatelessWidget {
  const EmptyTasksState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 350),
        Icon(Icons.add_task, color: Color(0xFFABCECA), size: 120),
        Text(
          'No tasks yet',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Text(
          'Add a task to get started',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
