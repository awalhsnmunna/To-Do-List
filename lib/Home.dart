import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _task = [];
  TextEditingController _taskController = TextEditingController();

  _addTask() {
    if (_taskController.text.isNotEmpty) {
      setState(() {
        _task.add(_taskController.text);
        _taskController.clear();
      });
    }
  }

  _removeTask(int index) {
    setState(() {
      _task.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 8),
            TextFormField(
              controller: _taskController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter your task",
                hintStyle: TextStyle(fontSize: 16),
                suffixIcon: IconButton(
                  onPressed: _addTask,
                  icon: Icon(Icons.add),
                ),
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: _task.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(_task[index]),
                      trailing: IconButton(
                        onPressed: () => _removeTask(index),
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
