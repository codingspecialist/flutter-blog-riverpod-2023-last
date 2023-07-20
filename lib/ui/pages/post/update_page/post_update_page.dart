import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/post/update_page/widgets/post_update_body.dart';

class PostUpdatePage extends StatelessWidget {
  const PostUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PostUpdateBody(),
    );
  }
}