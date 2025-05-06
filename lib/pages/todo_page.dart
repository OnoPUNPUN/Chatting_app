import 'package:flutter/material.dart';

import '../navigation_darawer.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<String> _todos = [];
  TextEditingController taskController = TextEditingController();
  void _addTask(){
    if(taskController.text.isNotEmpty){
      setState(() {
        _todos.add(taskController.text);
        taskController.clear();
      });
    }
  }

  void _delteTask(int index){
    setState(() {
      _todos.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          'Todos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.calendar_month),
          ),
        ],
      ),
      drawer: const NavigationDarawer(),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 15.0,
                ),
                child: SizedBox(
                  width: 410.0,
                  height: 51.0,
                  child: TextField(
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'Search for Task',
                      hintStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 30,
                      ),
                      filled: true,
                      fillColor: Colors.grey[120],
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(
                    padding: const EdgeInsets.only(bottom: 100),
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child:
                        Text('All ToDos',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Maven Pro',
                          ),
                        ),
                      ),
                      ListView.builder(
                          itemCount: _todos.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Card(
                                child: ListTile(
                                  title: Text(_todos[index]),
                                  trailing: IconButton(
                                      onPressed: ()=> _delteTask(index),
                                      icon: Icon(Icons.delete, color: Colors.red,)
                                  ),
                                ),
                              ),
                            );
                          }
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ),],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: taskController,
                      decoration: InputDecoration(
                          hintText: 'Add new Todo Items',
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _addTask();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(60, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Adjust the curve here
                      ),
                      elevation: 10,
                    ),
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
