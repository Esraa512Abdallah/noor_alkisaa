import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/labeled_field.dart';

class CreditRequest extends StatefulWidget {
  const CreditRequest({Key? key}) : super(key: key);

  @override
  _CreditRequestState createState() => _CreditRequestState();
}

class _CreditRequestState extends State<CreditRequest> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  String? _value;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("طلب رصيد"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                groundColor1,
                groundColor2,
                groundColor3,
                groundColor4,
              ],
            ),
          ),
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            // do something
          },
        ),
        actions: <Widget>[
          Image.asset("assets/images/question.png"),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(
                          child: Text(
                            "ادخل قيمةالرصيدالمطلوبة",
                            style: TextStyle(fontSize: 21, fontFamily: "Dubai"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        CustomTextFeildWithLable(
                          hintText: "10.000",
                          keyboardType: TextInputType.number,
                          onClick: (val) {
                            _value = val;
                          },
                          obscureText: false,
                          lableText: "قيمة الرصيد",
                          iconcolor: primaryGreenColor,
                          suffixWidget: Container(
                            height: 1,
                            width: 1,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.defaultSize! * 53,
                        ),
                        CustomgradentButton(
                          buttonWidth: null,
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    //this right here
                                    child: Container(
                                      height: SizeConfig.defaultSize! * 25,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 5.0,
                                                    right: 10.0,
                                                    left: 5.0,
                                                  ),
                                                  child: IconButton(
                                                    icon: Icon(
                                                      Icons.cancel,
                                                      color: Colors.grey[400],
                                                      size: 32,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Center(
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        child: SizedBox(
                                                          child: Image.asset(
                                                            "assets/images/Ellipse 2296.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 30,
                                                        left: 30,
                                                        child: Image.asset(
                                                            "assets/images/Path.png"),
                                                      ),
                                                    ],
                                                  ),
                                                  // Image.asset("assets/images/Ellipse 2296.png"),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "تم ارسال طلبك بنجاح لاداره نور الكساء",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: "Dubai",
                                                      color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "و سيتم استلام الرصيد باقرب وقت",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: "Dubai",
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                            }

                            // Navigator.pushNamed(
                            //     context, "ForgetPasswordScreen2");
                          },
                          child: Center(
                            child: Text(
                              "ارسال الطلب",
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                          borderColor: Colors.white,
                          alignment: Alignment.center,
                          buttonheight: SizeConfig.defaultSize! * 5.8,
                        ),
                      ],
                    ),
                  ),
                  /*  Row(
                  children: [

                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomTextFeildWithLable(
                                keyboardType: TextInputType.number,
                                onClick: (val) {
                                  _value = val;
                                },
                                obscureText: false,
                                lableText: "قيمة الرصيد",
                                iconcolor: primaryGreenColor,
                                suffixWidget: Container(),

                              ),
                            ),
                            Expanded(
                              child: CustomgradentButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                  }

                                  // Navigator.pushNamed(
                                  //     context, "ForgetPasswordScreen2");
                                },
                                child: Center(
                                  child: Text(
                                    "ارسال الطلب",
                                    style: Theme.of(context).textTheme.button,
                                  ),
                                ),
                                borderColor: Colors.white,
                                alignment: Alignment.center,
                                buttonheight: SizeConfig.defaultSize! * 5.8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
