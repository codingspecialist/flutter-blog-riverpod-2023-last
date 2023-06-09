import 'package:flutter/material.dart';
import 'package:flutter_blog_2/views/pages/user/info_page/components/user_info_appbar.dart';
import 'package:flutter_blog_2/views/pages/user/info_page/components/user_info_body.dart';
class UserInfoPage extends StatelessWidget {

  const UserInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger_me.jpg"),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: UserInfoAppbar(),
        body: UserInfoBody(),
      ),
    );
  }
}
