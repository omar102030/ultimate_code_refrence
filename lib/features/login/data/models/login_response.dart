import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  late final String message;
  late final bool status;
  late final int code;
  @JsonKey(name: 'data')
  late final UserData data;
  LoginResponse(
      {required this.message,
      required this.status,
      required this.code,
      required this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  late final String token;
  @JsonKey(name: 'username')
  late final String userName;
  UserData({
    required this.token,
    required this.userName,
  });
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
