import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Menu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Maven Pro',
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 4,
            itemBuilder: (context, index){
              return Padding(
                  padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent[400],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              );
            }
            )
      ),
    );
  }
}
