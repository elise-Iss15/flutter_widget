import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const TaskTile({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFE0DEFC)),
      ),
      child: CheckboxListTile(
        value: task.isDone,
        onChanged: (_) => onToggle(),
        activeColor: const Color(0xFF1D9E75),
        title: Text(
          task.title,
          style: TextStyle(
            fontSize: 14,
            color: task.isDone ? Colors.grey : Colors.black87,
            decoration: task.isDone
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        secondary: IconButton(
          icon: const Icon(
            Icons.delete_outline,
            color: Colors.redAccent,
            size: 20,
          ),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
