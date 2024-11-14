import 'package:dio/dio.dart';
import 'package:hidaya/features/home/data/models/ayas/ayah.dart';

class ApiServes {
  final _baseUrl = 'https://api.alquran.cloud/v1/';
  final Dio dio;

  ApiServes(this.dio);
   Future<Map<String,dynamic>> getAyah({required String endPoints}) async {
    Response response = await dio.get('$_baseUrl$endPoints');
    return response.data;
  }
}
