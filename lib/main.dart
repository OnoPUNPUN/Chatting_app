import 'package:flutter/material.dart';
import 'package:simple_login_page/login_page.dart';
import 'package:simple_login_page/user_page.dart';

import 'chat_page.dart';
import 'menu_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rack Chats',
      home: LoginPage(),
    );
  }
}
