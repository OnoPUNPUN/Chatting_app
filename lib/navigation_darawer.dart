import 'package:flutter/material.dart';
import 'package:simple_login_page/user_page.dart';

import 'login_page.dart';

class NavigationDarawer extends StatelessWidget {
  const NavigationDarawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buiildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
  Widget buiildHeader(BuildContext context){
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          // Close the Nav bar
          Navigator.pop(context);

          Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage()));
        },
        child: Container(
          padding: EdgeInsets.only(
            top: 24 + MediaQuery.of(context).padding.top,
            bottom: 24
          ),
          child: Column(
            children: const [
              CircleAvatar(
                radius: 52,
                backgroundImage: AssetImage('pics/punpun.jpg'),
              ),
        
              SizedBox(height: 12,),
        
              Text(
                'Tonmoy',
                style: TextStyle(fontSize: 28,),
              ),
              Text(
                'wasimulbaritonmoy@gmail.com'
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 10,
        children: [
          ListTile(
            leading: const Icon(Icons.chat, color: Colors.white,),
            title: const Text('Conversation', style: TextStyle(color: Colors.white),),
            onTap: (){
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.celebration, color: Colors.white,),
            title: const Text('Posts', style: TextStyle(color: Colors.white),),
            onTap: (){},
          ),

          ListTile(
            leading: const Icon(Icons.group, color: Colors.white,),
            title: const Text('Groups', style: TextStyle(color: Colors.white),),
            onTap: (){},
          ),

          ListTile(
            leading: const Icon(Icons.perm_media_outlined, color: Colors.white,),
            title: const Text('Medias', style: TextStyle(color: Colors.white),),
            onTap: (){},
          ),

          const Divider(color: Colors.white60, thickness: 2.0,),

          ListTile(
            leading: const Icon(Icons.logout, color: Colors.white,),
            title: const Text('Logout', style: TextStyle(color: Colors.white),),
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage())
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white,),
            title: const Text('Settings', style: TextStyle(color: Colors.white),),
            onTap: (){},
          )
        ],
      ),
    );
  }
}
