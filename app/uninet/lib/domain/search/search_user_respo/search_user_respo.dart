import 'package:json_annotation/json_annotation.dart';

part 'search_user_respo.g.dart';

@JsonSerializable()
class SearchUserRespo {
  String? headline;
  @JsonKey(name: 'image_path')
  dynamic imagePath;
  String? username;

  SearchUserRespo({this.headline, this.imagePath, this.username});

  factory SearchUserRespo.fromJson(Map<String, dynamic> json) {
    return _$SearchUserRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchUserRespoToJson(this);
}
