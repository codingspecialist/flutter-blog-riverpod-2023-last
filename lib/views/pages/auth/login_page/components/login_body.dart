import 'package:flutter/material.dart';
import 'package:flutter_blog_2/core/constants/move.dart';
import 'package:flutter_blog_2/core/constants/size.dart';
import 'package:flutter_blog_2/views/components/custom_logo.dart';
import 'package:flutter_blog_2/views/components/custom_text_button.dart';
import 'package:flutter_blog_2/views/pages/auth/login_page/components/login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const SizedBox(height: xlargeGap),
          const CustomLogo("Blog"),
          const SizedBox(height: largeGap),
          LoginForm(),
          CustomTextButton(
            "회원가입 페이지로 이동",
            () {
              Navigator.pushNamed(context, Move.joinPage);
            },
          ),
        ],
      ),
    );
  }
}
