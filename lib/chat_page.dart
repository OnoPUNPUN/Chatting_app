import 'package:flutter/material.dart';

import 'navigation_darawer.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Conversation',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: const NavigationDarawer(),
      body: Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
            child: SizedBox(
              width: 410.0,
              height: 51.0,
              child: TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  hintText: 'Search for Friends',
                  hintStyle:
                  const TextStyle(color: Colors.black54, fontSize: 20),
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('pics/punpun.jpg'),
                      radius: 30,
                    ),
                    title: Text('Tonmoy', style: TextStyle(fontSize: 20),),
                    subtitle: Text('This is awesome', style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('pics/hhh.jpg'),
                      radius: 30,
                    ),
                    title: Text('Big Boi Adolf', style: TextStyle(fontSize: 20),),
                    subtitle: Text("Let's Finish Them", style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('pics/R.jpg'),
                      radius: 30,
                    ),
                    title: Text('Nafiz', style: TextStyle(fontSize: 20),),
                    subtitle: Text('Amar CG 5.00', style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('pics/mimber.jpg'),
                      radius: 30,
                    ),
                    title: Text('C. Mike Rack', style: TextStyle(fontSize: 20),),
                    subtitle: Text('Man we should study math', style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('pics/Na.jpg'),
                      radius: 30,
                    ),
                    title: Text('Md. Robiul Islam', style: TextStyle(fontSize: 20),),
                    subtitle: Text('I will be the Next OSA', style: TextStyle(fontSize: 16, color: Colors.black45),),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('pics/D.jpg'),
                      radius: 30,
                    ),
                    title: Text('Danny', style: TextStyle(fontSize: 20),),
                    subtitle: Text('Danny sent an attachment', style: TextStyle(fontSize: 16, color: Colors.black45),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}