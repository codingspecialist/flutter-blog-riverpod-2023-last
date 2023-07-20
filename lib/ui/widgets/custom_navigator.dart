import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/move.dart';
import 'package:flutter_blog/_core/constants/size.dart';

class CustomNavigation extends StatelessWidget {
  final scaffoldKey;
  const CustomNavigation(this.scaffoldKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getDrawerWidth(context),
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  scaffoldKey.currentState!.openEndDrawer();
                  Navigator.pushNamed(context, Move.postWritePage);
                },
                child: const Text(
                  "글쓰기",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  scaffoldKey.currentState!.openEndDrawer();
                  Navigator.popAndPushNamed(context, Move.loginPage);
                },
                child: const Text(
                  "로그아웃",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
