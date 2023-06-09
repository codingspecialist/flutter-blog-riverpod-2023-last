import 'package:flutter/material.dart';

class UserInfoAppbar extends StatelessWidget implements PreferredSizeWidget{
  const UserInfoAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
