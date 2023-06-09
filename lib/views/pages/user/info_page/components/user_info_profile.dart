import 'package:flutter/material.dart';
import 'package:flutter_blog_2/core/constants/size.dart';

class UserInfoProfile extends StatelessWidget {
  const UserInfoProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger_me.jpg"),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "ssar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: smallGap),
        const Text(
          "ssar@nate.com",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
