import 'package:flutter/material.dart';
import 'package:flutter_blog_2/views/pages/auth/join_page/components/join_body.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: JoinBody(),
    );
  }
}
