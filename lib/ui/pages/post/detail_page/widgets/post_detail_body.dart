import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/ui/pages/post/detail_page/widgets/post_detail_buttons.dart';
import 'package:flutter_blog/ui/pages/post/detail_page/widgets/post_detail_content.dart';
import 'package:flutter_blog/ui/pages/post/detail_page/widgets/post_detail_profile.dart';
import 'package:flutter_blog/ui/pages/post/detail_page/widgets/post_detail_title.dart';

class PostDetailBody extends StatelessWidget {
  const PostDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          PostDetailTitle("제목"),
          const SizedBox(height: largeGap),
          PostDetailProfile(),
          PostDetailButtons(),
          const Divider(),
          const SizedBox(height: largeGap),
          PostDetailContent("내용"),
        ],
      ),
    );
  }
}
