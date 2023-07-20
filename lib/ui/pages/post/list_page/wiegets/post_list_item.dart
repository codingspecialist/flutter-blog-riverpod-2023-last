import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("제목", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(
        "내용",
        style: TextStyle(color: Colors.black45),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      trailing: ClipRRect(
        borderRadius: BorderRadius.circular(50), // 네모난 이미지를 동그랗게 만들기 위한 값 설정
        child: Image.asset('assets/default_profile.png'), // 네모난 이미지
      ),
    );
  }
}
