// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchUserRespo _$SearchUserRespoFromJson(Map<String, dynamic> json) =>
    SearchUserRespo(
      headline: json['headline'] as String?,
      imagePath: json['image_path'],
      username: json['username'] as String?,
    );

Map<String, dynamic> _$SearchUserRespoToJson(SearchUserRespo instance) =>
    <String, dynamic>{
      'headline': instance.headline,
      'image_path': instance.imagePath,
      'username': instance.username,
    };
