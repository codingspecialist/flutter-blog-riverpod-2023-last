import 'package:flutter_blog/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 창고 데이터
class RequestParam {
  int? postDetailId;
  // int? commentId;

  RequestParam({this.postDetailId});
}

// 2. 창고 (비즈니스 로직)
class ParamStore extends RequestParam {
  final mContext = navigatorKey.currentContext;
  void addPostDetailId(int postId) {
    this.postDetailId = postId;
  }

  void reset() {
    postDetailId = null;
  }
}

// 3. 창고 관리자
final paramProvider = Provider<ParamStore>((ref) {
  return ParamStore();
});
