import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/post/write_page/widgets/post_write_body.dart';

class PostWritePage extends StatelessWidget {
  const PostWritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PostWriteBody(),
    );
  }
}