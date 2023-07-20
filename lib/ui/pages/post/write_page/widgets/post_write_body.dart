import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/post/write_page/widgets/post_write_form.dart';

class PostWriteBody extends StatelessWidget {
  const PostWriteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: PostWriteForm(),
    );
  }
}
