import 'package:dio/dio.dart';
import 'package:untitled2/Model/slider_model.dart';
final dio = Dio();

Future<SliderModel> getHttp() async {
  final response = await dio.get("https://student.valuxapps.com/api/categories");

  final slider = SliderModel.fromJson(response.data);

  return slider;

}