import 'package:flutter/material.dart';
import 'package:simple_login_page/widgets/chat_bar.dart';
import 'models/users.dart';

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
              child: ListView.separated(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ChatBar(
                    friendName: user.friendName,
                    chat: user.chat,
                    imageLocation: user.imageLocation,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}