import 'package:json_annotation/json_annotation.dart';

part 'signup_respo.g.dart';

@JsonSerializable()
class SignupRespo {
  String? bio;
  String? email;
  String? headline;
  int? id;
  String? msg;
  String? projects;
  String? updates;
  String? username;

  SignupRespo({
    this.bio,
    this.email,
    this.headline,
    this.id,
    this.msg,
    this.projects,
    this.updates,
    this.username,
  });

  factory SignupRespo.fromJson(Map<String, dynamic> json) {
    return _$SignupRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignupRespoToJson(this);
}
