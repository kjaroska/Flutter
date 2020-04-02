import 'package:flutter/material.dart';
import 'package:fluttertodoapp/model/todo.dart';
import 'package:fluttertodoapp/screens/todolist.dart';
import 'package:fluttertodoapp/util/dbHelper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    DbHelper helper = DbHelper();
//    List<Todo> todos = List<Todo>();
//
//    helper.initializeDb().then(
//        (result) => helper.getTodos().then((result) => todos = result)
//    );
//
//    DateTime today = DateTime.now();
//    Todo todo = Todo("Buy Apples", 1, today.toString(), "Description");
//    helper.insertTodo(todo);
//
//    Todo todo2 = Todo("Buy Potatos", 2, today.toString(), "Description");
//    helper.insertTodo(todo2);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Todos",
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: MyHomePage(title: "Todos"),
        );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TodoList(),
    );
  }
}
