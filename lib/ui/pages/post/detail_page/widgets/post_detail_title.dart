import 'package:flutter/material.dart';

class PostDetailTitle extends StatelessWidget {
  final String title;

  const PostDetailTitle(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
    );
  }
}

