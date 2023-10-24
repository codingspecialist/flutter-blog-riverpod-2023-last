import 'package:flutter/material.dart';

import 'widget/chat_body.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatBody(),
    );
  }
}
