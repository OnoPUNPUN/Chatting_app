import 'package:flutter/material.dart';

class ChatBar extends StatelessWidget {
  final String friendName;
  final String? chat;
  final String? imageLocation;

  const ChatBar({
    super.key,
    required this.friendName,
    this.chat,
    this.imageLocation,
  });

  @override
  Widget build(BuildContext context) {
    const defaultImagePath = 'pics/user.png';
    const defultChat = 'Say HI';

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          (imageLocation == null || imageLocation!.isEmpty)
              ? defaultImagePath
              : imageLocation!,
        ),
        radius: 30,
      ),
      title: Text(
        friendName,
        style: const TextStyle(fontSize: 20),
      ),
      subtitle: Text(
        (chat!.isEmpty) ? defultChat : chat!,
        style: const TextStyle(fontSize: 16, color: Colors.black45),
      ),
    );
  }
}
