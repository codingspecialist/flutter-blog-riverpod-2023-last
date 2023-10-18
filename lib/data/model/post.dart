import 'package:flutter_blog/data/model/user.dart';
import 'package:intl/intl.dart';

class Post {
  int id;
  String title;
  String content;
  User user;
  DateTime created;
  DateTime updated;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.user,
    required this.created,
    required this.updated,
  });

  // Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "user": user,
        "created": created,
        "updated": updated
      };

  // Map 형태로 받아서 Dart 객체로 변환합니다.
  Post.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        content = json["content"],
        user = User.fromJson(json["user"]),
        created = DateFormat("yyyy-mm-dd").parse(json["created"]),
        updated = DateFormat("yyyy-mm-dd").parse(json["updated"]);

  // TODO 2: 체크해보기
  String getUpdated() {
    return DateFormat.MMMd().format(updated);
  }
}
