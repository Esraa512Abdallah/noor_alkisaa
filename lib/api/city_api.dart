
import 'dart:convert';

import 'package:get/get_connect/http/src/http/utils/body_decoder.dart';
import 'package:http/http.dart';
import 'package:noor_alkisaa/api/api_util.dart';

import '../model/city_model.dart';

class CityApi {



  static Future getAllCities() async {

    final Response cityResponse = await get(Uri.parse(Auth_city));

    if (cityResponse.statusCode == 200) {
      print(cityResponse.body);


      return  CityData.fromJson(jsonDecode(cityResponse.body));

    } else {

      throw Exception("Can't load author");
    }
  }
}





  //
  // static Future<String> AllCity() async {
  //   final response = await get(Uri.parse(Auth_city),
  //       // headers: <String, String>{
  //       //   'Content-Type': 'application/json;charset=UTF-8'
  //       // },
  //   );
  //
  //
  //       // body: jsonEncode(<String, String>{
  //       //  "name":name,
  //       //  // "country":country,
  //       //
  //       // })
  //
  //   // );
  //   if (response.statusCode == 200) {
  //
  //
  //
  //     print(response.body);
  //
  //     print("************ is success******************");
  //
  //     return response.body ;
  //    // return response.body ;
  //
  //   } else {
  //     print("************ is failed******************");
  //     throw Exception("Can't load author");
  //   }
  // }



