import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/auth/login_page/widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}
