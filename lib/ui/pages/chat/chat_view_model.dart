// 1. 창고 데이터
import 'package:flutter_blog/data/model/chat.dart';
import 'package:flutter_blog/data/repository/chat_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatModel {
  List<Chat> chatList;
  ChatModel(this.chatList);
}

// 2. 창고
class ChatViewModel extends StateNotifier<ChatModel?> {
  ChatViewModel(super.state);

  Future<void> notifyInit() async {
    ChatRepository().streamChat().listen((event) {
      state = ChatModel(event);
    });
  }

  Future<void> notifyAdd(Chat chat) async {
    ChatRepository().insert(chat);
  }
}

// 3. 창고 관리자
final chatProvider = StateNotifierProvider<ChatViewModel, ChatModel?>((ref) {
  return ChatViewModel(null)..notifyInit();
});
