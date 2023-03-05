import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

Future<String> uploadImage(XFile file) async {
  String fileName = file.path.split('/').last;
  FormData formData = FormData.fromMap({
    "file": await MultipartFile.fromFile(file.path, filename: fileName),
  });

  final response = await Dio(BaseOptions()).post("/info", data: formData);
  return response.data['id'];
}

ImagePicker picker = ImagePicker();

Future<XFile?> getimage() async {
  XFile? image = await picker.pickImage(source: ImageSource.gallery);
  if (image == null) {
  } else {
    uploadImage(image);
  }
  return image;
}
