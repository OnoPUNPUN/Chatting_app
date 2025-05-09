import 'package:flutter/material.dart';
import 'package:simple_login_page/models/users.dart';

class ChattingPage extends StatefulWidget {
  final Users users;
  const ChattingPage({super.key, required this.users});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blueAccent,
        title: Text(widget.users.friendName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontFamily: 'Maven Pro',
          ),
        ),
      ),
    );
  }
}
