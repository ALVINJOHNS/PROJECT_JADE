import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:uninet/domain/search/search_user_respo/search_user_respo.dart';

void getUserSearchResult({required String query}) async {
  final respo = await Dio(BaseOptions())
      .get("https://uninet.azurewebsites.net/user/search_user/$query");
  log(respo.data);
  final SearchUserRespo responce = SearchUserRespo.fromJson(respo.data);
  log(respo.data);
}
