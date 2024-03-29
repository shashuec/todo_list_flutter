import 'package:flutter/material.dart';

import 'package:todo_list/todo.dart';


class NewTodoDialog extends StatelessWidget {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New todo'),
      content: TextField(controller:controller,autofocus: true,),
      actions: <Widget>[FlatButton(child:Text('Cancel'),
          onPressed: () {Navigator.of(context).pop();}),
        FlatButton(child:Text('Add'),
            onPressed: () {
              //print(controller.value.text);
              //controller.clear();
//           setState(() {
              final todo=new Todo(title:controller.value.text);
              //           todos.add(todo);
              //          controller.clear();
              Navigator.of(context).pop(todo);
              //       });
            })],
    );
  }
}