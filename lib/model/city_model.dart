class CityModel {
  final String? name;

  CityModel({
    required this.name,
  });

  factory CityModel.fromJson(Map<String, dynamic>? jsonData) {
    return CityModel(
      name: jsonData!["name"],
    );
  }
}

class CityData {
  final List<CityModel>? cities;

  CityData({required this.cities});

  factory CityData.fromJson(Map<String?, dynamic>? jsonData) {
    return CityData(
      cities: (jsonData!["data"] as List)
          .map((e) => CityModel.fromJson(e))
          .toList(),
    );
  }
}



// class CountryModel {
//   final String? countryCode;
//
//   final String? countryKey;
//
//   final String? name;
//
//   CountryModel({
//     required this.countryCode,
//     required this.countryKey,
//     required this.name,
//   });
//
//   factory CountryModel.fromjson(Map<String, dynamic>? jsonData) {
//     return CountryModel(
//       countryCode: jsonData!["countryCode"],
//       countryKey: jsonData["countryKey"],
//       name: jsonData["name"],
//     );
//   }
// }
