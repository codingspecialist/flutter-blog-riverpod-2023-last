import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetailButtons extends StatelessWidget {

  const PostDetailButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () async {
          },
          icon: const Icon(CupertinoIcons.delete),
        ),
        IconButton(
          onPressed: () {
          },
          icon: const Icon(CupertinoIcons.pen),
        ),
      ],
    );
  }
}
