import 'package:intl/intl.dart';

class Chat {
  String message;
  String sender;
  String receiver;

  Chat({required this.message, required this.sender, required this.receiver});

  // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() =>
      {"message": message, "sender": sender, "receiver": receiver};

  // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
  Chat.fromJson(Map<String, dynamic> json)
      : message = json["message"],
        sender = json["sender"],
        receiver = json["receiver"];
}
