import 'package:flutter/material.dart';
import 'package:app_tarefas/app/core/ui/theme_extensions.dart';

class TodoListLogo extends StatelessWidget {
  const TodoListLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logo.png',
          height: 200,
        ),
        Text(
          'Todo List',
          style: context.textColor.headline6,
        ),
      ],
    );
  }
}
