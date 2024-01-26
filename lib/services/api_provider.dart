import 'package:dio/dio.dart';

import '../models/employee_model.dart';

class ApiProvider {
  final Dio dio = Dio();

  Future<EmployeeModel> getEmployeeData(Map<String, dynamic> data) async {
    dio.options =
        BaseOptions(receiveTimeout: const Duration(milliseconds: 5000));
    var response = await dio.get('http://10.0.2.2:8000/windows/login',
        queryParameters: data);
    return EmployeeModel.fromJson(response.data);
  }
}