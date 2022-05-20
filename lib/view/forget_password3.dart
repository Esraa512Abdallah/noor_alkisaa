import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/labeled_field.dart';
import 'package:noor_alkisaa/controller/app_local.dart';

class ForgetPasswordScreen3 extends StatefulWidget {
  const ForgetPasswordScreen3({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen3> createState() => _ForgetPasswordScreen3State();
}

class _ForgetPasswordScreen3State extends State<ForgetPasswordScreen3> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;

  final _formKey = GlobalKey<FormState>();

  String? _password, _confirmPassword;

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    //bool _passwordVisible = false;

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
                    padding: EdgeInsets.only(top: 90),
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
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Container(
                    child: Column(children: <Widget>[
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  AppLocal.of(context).getTranslated(
                                      "ادخل كلمه المرور الجديده"),
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize! * 3,
                            ),
                            CustomTextFieldWithLabel(
                              hintText:"****************" ,
                              onSaved: (val) {
                                _password = val;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _isObscure1,
                              labelText: AppLocal.of(context)
                                  .getTranslated("كلمة المرور"),
                              iconColor: primaryGreenColor,
                              suffixWidget: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscure1 = !_isObscure1;
                                  });
                                },
                                icon: _isObscure1
                                    ? Icon(
                                  Icons.visibility,
                                  color: primaryGreenColor,
                                )
                                    : Icon(
                                  Icons.visibility_off,
                                  color: primaryGreenColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize! * 3,
                            ),
                            CustomTextFieldWithLabel(
                              hintText: "******************",
                              onSaved: (val) {
                                _confirmPassword = val;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _isObscure2,
                              labelText: AppLocal.of(context)
                                  .getTranslated("تأكيد كلمة المرور"),
                              iconColor: primaryGreenColor,
                              suffixWidget: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscure2 = !_isObscure2;
                                  });
                                },
                                icon: _isObscure2
                                    ? Icon(
                                  Icons.visibility,
                                  color: primaryGreenColor,
                                )
                                    : Icon(
                                  Icons.visibility_off,
                                  color: primaryGreenColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize! * 3,
                            ),
                            CustomgradentButton(
                              buttonWidth: null,
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();

                                  Navigator.pushNamed(context, "SignInScreen");

                                  _formKey.currentState!.reset();
                                }
                              },
                              child: Text(
                                AppLocal.of(context).getTranslated("التالى"),
                                style: Theme.of(context).textTheme.button,
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
