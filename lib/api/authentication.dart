import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:noor_alkisaa/api/api_util.dart';
import 'package:noor_alkisaa/model/signin_model.dart';

class Authentication {

  static Future<SigInModel> SigIn(String phone ,String password , String type ) async {
    final response = await post(Uri.parse(Auth_Sigin),
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        },
        body: jsonEncode(<String, String>{
          "phone": phone,
          "password": password,
          "type": type ,
        }));
    if (response.statusCode == 200) {
      //print(response.body);

      print("************login is success******************");

      return SigInModel.fromJson(json.decode(response.body));

    } else {
      print("************login is failed******************");
      throw Exception("Can't load author");
    }
  }

}
