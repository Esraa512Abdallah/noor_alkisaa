import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_alkisaa/model/city_model.dart';

import 'api/city_api.dart';

class Try extends StatelessWidget {
   Try({Key? key}) : super(key: key);

 //  CityApi cityController = Get.put(CityApi());



  //Future<CityModel>? citiesData ;
  //
  // @override
  // void initState(){
  //   // super.initState();
  //  // citiesData = CityApi.getAllCities();
  //   print("successs");
  // }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: FutureBuilder(
          future: CityApi.getAllCities(),
          builder: (context, AsyncSnapshot? snapshot) {

            //Object? cities = snapshot.data;

             CityData? cites = snapshot!.data;

            if (snapshot.hasData) {

                 // print("////////////////////////////////${cites!.name}");

              print("snapshot hasError : ${snapshot.hasError}");
              return ListView.builder(
                itemCount: cites!.cities!.length ,
                itemBuilder: (context, int index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "${cites.cities![index].name}",
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                },
              );
            }
            else {
              print("//////////////////////////////////////");
              print("snapshot hasError : ${snapshot.hasError}");
              print("snapshot connection State : ${snapshot.connectionState}");
              print("snapshot hasData : ${snapshot.hasData}");
              print("snapshot error : ${snapshot.error}");
              print("//////////////////////////////////////");


              return Center(
                child: Container(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
