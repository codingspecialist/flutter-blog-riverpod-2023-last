import 'package:dio/dio.dart';
import 'package:flutter_blog/data/dto/response_dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'retro_repository.g.dart';

@RestApi(baseUrl: 'http://192.168.0.20:8080')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/init/user')
  Future<ApiUtil> getUsers();
}

@JsonSerializable()
class ApiUtil {
  int? code; // 서버에서 요청 성공 여부를 응답할 때 사용되는 변수
  String? msg; // 서버에서 응답 시 보내는 메시지를 담아두는 변수
  String? token; // 헤더로 던진 토큰 값을 담아두는 변수
  List<Member>? data; // 서버에서 응답한 데이터를 담아두는 변수

  ApiUtil({this.code, this.msg, this.token, this.data});

  Map<String, dynamic> toJson() => _$ApiUtilToJson(this);
  factory ApiUtil.fromJson(Map<String, dynamic> json) =>
      _$ApiUtilFromJson(json);
}

@JsonSerializable()
class Member {
  Member({this.id, this.username, this.email, this.created, this.updated});

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

  int? id;
  String? username;
  String? email;
  DateTime? created;
  DateTime? updated;

  Map<String, dynamic> toJson() => _$MemberToJson(this);
}
