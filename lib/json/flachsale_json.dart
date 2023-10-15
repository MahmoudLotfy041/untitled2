import 'package:dio/dio.dart';
import 'package:untitled2/Model/flashsale_model.dart';
import 'package:untitled2/Model/slider_model.dart';


final dio = Dio();

Future<FlachSale> getHttp() async {
  final response = await dio.get("https://student.valuxapps.com/api/categories");

  final flachsale = FlachSale.fromJson(response.data);

  return flachsale;

}