import 'package:dio/dio.dart';
import 'package:flutter_blog/_core/constants/http.dart';
import 'package:flutter_blog/data/dto/response_dto.dart';
import 'package:flutter_blog/data/dto/user_request.dart';
import 'package:flutter_blog/data/model/user.dart';

void main() async {
  await fetchJoin(JoinReqDTO(
      username: "love101", password: "1234", email: "love@nate.com"));
}

Future<void> fetchJoin(JoinReqDTO requestDTO) async {
  Response<dynamic> response =
      await dio.post("/join", data: requestDTO.toJson());

  print(response);
  print(response.headers);
  print(response.data); // map 타입이네!!

  print(response.data.runtimeType);

  int code = response.data["code"];
  String msg = response.data["msg"];
  dynamic data = response.data["data"];
  print(code);
  print(msg);
  print(data);

  User user = User.fromJson(data);
  print(user);
}
