import 'package:flutter/material.dart';
import 'package:flutter_blog_2/core/util/validator_util.dart';
import 'package:flutter_blog_2/views/components/custom_auth_text_form_field.dart';

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomAuthTextFormField(
            text: "Username",
            obscureText: false,
            funValidator: validateUsername(),
            controller: _username,
          ),
          CustomAuthTextFormField(
            text: "Password",
            obscureText: true,
            funValidator: validatePassword(),
            controller: _password,
          ),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
