import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/style.dart';
import 'package:flutter_blog/data/model/chat.dart';
import 'package:flutter_blog/ui/pages/chat/chat_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatBody extends ConsumerWidget {
  final _message = TextEditingController();
  String sendMessage = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ChatModel? model = ref.watch(chatProvider);
    List<Chat> chatList = [];
    if (model != null) {
      chatList = model.chatList;
    }
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView(
              reverse: true, // reverse란 무엇인지 정리하자.
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              children: chatList.map((e) => Text("${e.message}")).toList(),
            ),
          ),
          Container(
            decoration: kMessageContainerDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    controller: _message,
                    onChanged: (value) {
                      sendMessage = value;
                    },
                    decoration: kMessageTextFieldDecoration,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _message.clear();
                    ref.read(chatProvider.notifier).notifyAdd(Chat(
                        message: sendMessage, sender: "ssar", receiver: "cos"));
                    // _firestore.collection('messages').add({
                    //   'text': messageText,
                    //   'sender': loginCurrentUser.email,
                    //   'date': FieldValue.serverTimestamp()
                    //   // 고유ID는 자동정렬을 지원하지 않기에 추가
                    // });
                  },
                  child: Text(
                    'Send',
                    style: kSendButtonTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
