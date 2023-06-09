import 'package:flutter/material.dart';
import 'package:flutter_blog_2/views/components/custom_navigator.dart';
import 'package:flutter_blog_2/views/pages/post/post_list_page/components/post_list_body.dart';

class PostListPage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final refreshKey = GlobalKey<RefreshIndicatorState>();

  PostListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomNavigation(scaffoldKey),
      appBar: AppBar(
        title: const Text("Blog"),
      ),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
        },
        child: PostListBody(),
      ),
    );
  }
}
