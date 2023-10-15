import 'package:dio/dio.dart';
import 'dart:convert';
import '../Model/category_model.dart';

final dio = Dio();

Future<CategoryModel1> getHttp() async {
  final response = await dio.get("https://student.valuxapps.com/api/categories");

  final category = CategoryModel1.fromJson(response.data);

  return category;


}



