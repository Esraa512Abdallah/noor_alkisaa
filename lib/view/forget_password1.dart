import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/labeled_field.dart';
import 'package:noor_alkisaa/view_model/app_local.dart';

class ForgetPasswordScreen1 extends StatefulWidget {
  const ForgetPasswordScreen1({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen1> createState() => _ForgetPasswordScreen1State();
}

class _ForgetPasswordScreen1State extends State<ForgetPasswordScreen1> {
  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();
  String? _email;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: SizeConfig.screenHeight! / 2.1,
                  child: Padding(
                    padding:
                    EdgeInsets.only(top: SizeConfig.defaultSize! * 8.8),
                    child: Column(
                      children: [
                        Image.asset("assets/images/layer3.png"),
                        SizedBox(
                          height: SizeConfig.screenHeight! / 20,
                        ),
                        Column(
                          children: [
                            Text(
                              AppLocal.of(context)
                                  .getTranslated("نسيت كلمة المرور؟"),
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Divider(
                              height: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.defaultSize! * 2.5,
                      left: SizeConfig.defaultSize! * 2.5),
                  child: Column(children: <Widget>[
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                AppLocal.of(context).getTranslated(
                                    "ادخل البريد الالكتروني لإرسال الكود علية"),
                                style: TextStyle(
                                    fontSize: 21, color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize! * 3,
                          ),
                          CustomTextFeildWithLable(
                            hintText: "********************",
                            keyboardType: TextInputType.emailAddress,
                            onClick: (val) {
                              _email = val;
                            },
                            obscureText: false,
                            lableText: AppLocal.of(context)
                                .getTranslated("البريد الالكتروني"),
                            iconcolor: primaryGreenColor,
                            suffixWidget: Image.asset("assets/images/mail.png"),
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize! * 3,
                          ),
                          CustomgradentButton(
                            buttonWidth: null,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                Navigator.pushNamed(
                                    context, "ForgetPasswordScreen2");
                                _formKey.currentState?.reset();
                              }
                            },
                            child: Center(
                              child: Text(
                                AppLocal.of(context).getTranslated("التالى"),
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
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
