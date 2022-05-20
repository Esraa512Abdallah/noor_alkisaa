class SignUpModel {

  final String name;

  final String phoneNumber;

  final String email;

  final String region;

  final String address;

  final String passWord;

  final String confirmPassWord;

  final String nCFontImage;

  final String nCBehindImage;

  final String rCFontImage;

  final String rCBehindImage;

  final String cateringCardImage;

  final String officeImage;


  SignUpModel({
    required this.name,
    required this.email,
    required this.passWord,
    required this.confirmPassWord,
    required this.phoneNumber,
    required this.address,
    required this.region,
    required this.rCFontImage,
    required this.rCBehindImage,
    required this.nCBehindImage,
    required this.nCFontImage,
    required this.cateringCardImage,
    required this.officeImage
  });

  factory SignUpModel.fromJson(Map<String, dynamic>? jsonData){
    return SignUpModel(
        name: jsonData!["name"],
        email: jsonData["email"],
        passWord: jsonData["passWord"],
        confirmPassWord: jsonData["confirmPassWord"],
        phoneNumber: jsonData["phoneNumber"],
        address: jsonData["address"],
        region: jsonData["region"],
        rCFontImage: jsonData["rCFontImage"],
        rCBehindImage: jsonData["rCBehindImage"],
        nCBehindImage: jsonData["nCBehindImage"],
        nCFontImage: jsonData["nCFontImage"],
        cateringCardImage: jsonData["cateringCardImage"],
        officeImage: jsonData["officeImage"],
    );
  }

}


