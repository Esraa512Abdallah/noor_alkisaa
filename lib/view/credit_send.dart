import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/labeled_field.dart';

class CreditSend extends StatefulWidget {
  const CreditSend({Key? key}) : super(key: key);

  @override
  _CreditSendState createState() => _CreditSendState();
}

class _CreditSendState extends State<CreditSend> {
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
        title: Text("تحويل رصيد"),
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

                  Padding(
                    padding: EdgeInsets.only(right: 15,top: 25,left: 15,bottom: 15),
                    child: Column(
                      children: [
                        CustomTextFeildWithLable(
                          hintText: "0123456789",
                          keyboardType: TextInputType.number,
                          onClick: (val) {
                            _value = val;
                          },
                          obscureText: false,
                          lableText: "رقم الجوال/الرقم التعريفي",
                          iconcolor: primaryGreenColor,
                          suffixWidget: Container(
                            height: 1,
                            width: 1,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.defaultSize! * 3,
                        ),
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
                          height: SizeConfig.defaultSize! * 48,
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
                                      height: SizeConfig.defaultSize! * 31,
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
                                                  "هل انت متاكد من تم تحويل مبلغ10.000د.ع",
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
                                                  "لمركز ريان",
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
                                                  "الرقم التعريفي:SEL985458452",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: "Dubai",
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                              child: CustomgradentButton(
                                                buttonWidth: SizeConfig.defaultSize!*30,

                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  showDialog(
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return Dialog(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(15.0)),
                                                          //this right here
                                                          child: Container(
                                                            height: SizeConfig.defaultSize! * 23,
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
                                                                        "تم تحويل مبلغ10.000د.ع لمركز ريان",
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
                                                                        "الرقم التعريفي:SEL985458452",
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
                                                    "تحويل",
                                                    style: Theme.of(context).textTheme.button,
                                                  ),
                                                ),
                                                borderColor: Colors.white,
                                                alignment: Alignment.center,
                                                buttonheight: SizeConfig.defaultSize! * 5.0,


                                              ),
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
                              "تحويل",
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

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
