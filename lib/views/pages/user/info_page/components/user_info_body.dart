import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_2/core/constants/size.dart';
import 'package:flutter_blog_2/views/components/custom_bottom_icon_button.dart';
import 'package:flutter_blog_2/views/pages/user/info_page/components/user_info_profile.dart';

class UserInfoBody extends StatelessWidget {
  const UserInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        UserInfoProfile(),
        SizedBox(height: mediumGap),
        Divider(color: Colors.white),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 18),
          child: CustomBottomIconButton(
            icon: CupertinoIcons.pen,
            text: "프로필 편집",
          ),
        )
      ],
    );
  }
}
