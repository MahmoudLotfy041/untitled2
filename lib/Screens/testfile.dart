import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:untitled2/Screens/json.dart';

final dio = Dio();

Future<Category> getHttp() async {
  final response = await dio.get("https://student.valuxapps.com/api/categories");

  final category = Category.fromJson(response.data);

  return category;


}

