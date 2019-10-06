import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';

import 'package:todo_list/new_todo_dialog.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

  List<Todo> todos =[];
//  [
//    Todo(title: 'Learn Dart'),
//    Todo(title: 'Try Flutter'),
//    Todo(title: 'Be amazed'),
//  ];

  @override
  Widget build(BuildContext context) {
    //return Container();
    return
      Scaffold(
          appBar: AppBar(title: Text('Todo List1'),),
          body:ListView.builder(
            itemBuilder: _buildItem,
            itemCount: todos.length,
          ),
          floatingActionButton:FloatingActionButton(
              child:Icon(Icons.add),
            onPressed: _addTodo,
          )
      );
  }

  _addTodo() async{
    final todo=await showDialog<Todo>(
         context: context,
         builder: (BuildContext context) {
       return NewTodoDialog();
           },
         );
    if(todo!=null){
      setState(() {
        todos.add(todo);
      });
    }
  }

  Widget _buildItem(BuildContext context, int index){
    final todo=todos[index];
    return CheckboxListTile(value:todo.isDone,
    title: Text(todo.title),
    onChanged: (bool isChecked){
      _toggelTodo(todo,isChecked);
    },);
  }
  _toggelTodo(Todo todo,bool isChecked){
    setState(() {
      todo.isDone = isChecked;
    });
  }
}