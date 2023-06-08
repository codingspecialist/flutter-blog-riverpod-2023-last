import 'package:flutter/material.dart';
import 'package:flutter_blog_2/views/pages/auth/login_page/login_page.dart';

class Move {
  static String loginPage = "/login";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.loginPage: (context) => LoginPage(),
  };
}