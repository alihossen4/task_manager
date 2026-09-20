import 'dart:convert';

import 'package:http/http.dart';
import 'package:task_management/model/api_response.dart';

class ApiCaller {
  
  static Future<ApiResponse>getRequest({required String uri})async{
    Response response = await get(Uri.parse(uri));
      print("$response.statusCode");
      print("$response.body");
    if(response.statusCode==200 || response.statusCode==201){
      return ApiResponse(statusCode: response.statusCode, responseData: jsonDecode(response.body), isSuccess: true);
    }else{
      return ApiResponse(statusCode: response.statusCode, responseData: jsonDecode(response.body), isSuccess: jsonDecode(response.body));
    }
  }

   static Future<ApiResponse>postRequest({required String uri, Map<String, dynamic>?body})async{

    Response response = await post(
      Uri.parse(uri),

      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      body: body !=null? jsonEncode(body):null,
    );
      print("$response.statusCode");
      print("$response.body");
    if(response.statusCode==200 || response.statusCode==201){
      return ApiResponse(statusCode: response.statusCode, responseData: jsonDecode(response.body), isSuccess: true);
    }else{
      return ApiResponse(statusCode: response.statusCode, responseData: jsonDecode(response.body), isSuccess: jsonDecode(response.body));
    }
  }
  
}