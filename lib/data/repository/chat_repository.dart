import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_blog/data/model/chat.dart';

class ChatRepository {
  Stream<List<Chat>> streamChat() {
    final db = FirebaseFirestore.instance;
    Stream<QuerySnapshot<Map<String, dynamic>>> stream =
        db.collection("chat").snapshots();

    return stream.map((snapshot) =>
        snapshot.docs.map((doc) => Chat.fromJson(doc.data())).toList());
  }

  Future<void> insert(Chat chat) async {
    final db = FirebaseFirestore.instance;
    db.collection("chat").add(chat.toJson());
  }
}
