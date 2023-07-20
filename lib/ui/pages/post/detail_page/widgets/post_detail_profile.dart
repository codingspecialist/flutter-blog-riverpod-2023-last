import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/size.dart';

class PostDetailProfile extends StatelessWidget {

  const PostDetailProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text("ssar"),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset('assets/default_profile.png'),
        ),
        subtitle: Row(
          children: [
            Text("ssar@nate.com"),
            const SizedBox(width: mediumGap),
            const Text("·"),
            const SizedBox(width: mediumGap),
            const Text("Written on "),
            Text("May 25"),
          ],
        )
    );
  }
}
