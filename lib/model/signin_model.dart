

class  SigInModel{


  final String phone ;
  final String password ;
  final String type ;

  SigInModel({
    required this.phone,
    required this.password,
    required this.type,


  });

  factory SigInModel.fromJson(Map<String , dynamic>? jsonData){

    return SigInModel(
      password: jsonData!["password"],
      phone: jsonData["phone"],
      type: jsonData["type"],


    );

  }
}

