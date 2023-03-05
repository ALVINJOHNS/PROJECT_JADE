// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRespo _$SignupRespoFromJson(Map<String, dynamic> json) => SignupRespo(
      bio: json['bio'] as String?,
      email: json['email'] as String?,
      headline: json['headline'] as String?,
      id: json['id'] as int?,
      msg: json['msg'] as String?,
      projects: json['projects'] as String?,
      updates: json['updates'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$SignupRespoToJson(SignupRespo instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'email': instance.email,
      'headline': instance.headline,
      'id': instance.id,
      'msg': instance.msg,
      'projects': instance.projects,
      'updates': instance.updates,
      'username': instance.username,
    };
