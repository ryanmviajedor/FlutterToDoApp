import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: const Text('TO DO'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "Make Tutorial",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          ToDoTile(
            taskName: "Go Biking",
            taskCompleted: false,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}
