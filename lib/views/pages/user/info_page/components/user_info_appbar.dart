import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_2/views/components/custom_round_icon_button.dart';

class UserInfoAppbar extends StatelessWidget implements PreferredSizeWidget{
  const UserInfoAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent, // 1
      leading: IconButton(
        icon: const Icon(
          CupertinoIcons.xmark,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: const [
        CustomRoundIconButton(icon: CupertinoIcons.gift),
        SizedBox(width: 15),
        CustomRoundIconButton(icon: CupertinoIcons.gear_solid),
        SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
