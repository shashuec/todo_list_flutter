import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:todo_list/todo_list.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
runApp(MyApp());
}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Todo List',
        home: TodoList(),
    );
  }
}