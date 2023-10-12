import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:untitled2/Screens/json.dart';

final dio = Dio();

void getHttp() async {
  final response = await dio.get("https://student.valuxapps.com/api/categories");

  final x = Category.fromJson(response.data);








}

