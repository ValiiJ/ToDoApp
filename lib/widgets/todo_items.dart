import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/model/todo.dart';

class ToDoItems extends StatelessWidget {
  final ToDo todoExp;
  final onToDoChange;
  final onDeleteItem;
  const ToDoItems({
    super.key,
    required this.todoExp,
    required this.onToDoChange,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: ListTile(
        onTap: () {
          // print(
          //   'Yes this button is pressed!',
          // );
          onToDoChange(todoExp);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        tileColor: Colors.white,
        leading: Icon(
          todoExp.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todoExp.todoText!,
          style: TextStyle(
            fontSize: 18,
            color: tdBlack,
            decoration: todoExp.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
          child: IconButton(
            onPressed: () {
              // print('yes!');
              onDeleteItem(todoExp.id);
            },
            color: Colors.white,
            icon: const Icon(
              Icons.delete,
            ),
            iconSize: 18,
          ),
        ),
      ),
    );
  }
}
