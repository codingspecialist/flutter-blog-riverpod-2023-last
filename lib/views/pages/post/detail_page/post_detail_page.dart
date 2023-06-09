import 'package:flutter/material.dart';
import 'package:flutter_blog_2/views/pages/post/detail_page/components/post_detail_body.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PostDetailBody(),
    );
  }
}
