import 'package:flutter/material.dart';
import 'package:noor_alkisaa/api/authentication.dart';
import 'package:noor_alkisaa/api/city_api.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_button.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/labeled_field.dart';
import 'package:noor_alkisaa/controller/app_local.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isObscure = true;
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
   void initState(){
    super.initState();
    CityApi.getAllCities();
    print("successs");
  }

  @override
  Widget build(BuildContext context) {
    // final _formKey = GlobalKey<FormState>();
    //final textEditingController1 = TextEditingController();
    //final textEditingController2 = TextEditingController();
    //bool _passwordVisible = false;
    // final _userPasswordController = TextEditingController();


    String? _passWord, _phoneNumber;

    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: SizeConfig.screenHeight! / 2.1,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize! * 8.8,
                        bottom: SizeConfig.defaultSize! * 2),
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
                                  .getTranslated("تسجيل الدخول"),
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
                      top: SizeConfig.defaultSize! * 0.5,
                      right: SizeConfig.defaultSize! * 3,
                      left: SizeConfig.defaultSize! * 3),
                  child: Container(
                    child: Column(children: <Widget>[
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: CustomTextFieldWithLabel(

                                onSaved: (val) {
                                  setState(() {
                                    _phoneNumber = val;
                                  });
                                },
                                keyboardType: TextInputType.phone,
                                obscureText: false,
                                labelText: AppLocal.of(context)
                                    .getTranslated("رقم الجوال"),
                                iconColor: primaryGreenColor,
                                suffixWidget:Image.asset("assets/images/phone_icon.png",height: 50,width: 50,),
                                hintText: "0123456789",
                                errorMessage: AppLocal.of(context).getTranslated('الرجاء ادخال رقم الجوال'),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize! * 3,
                            ),
                            CustomTextFieldWithLabel(

                              errorMessage: AppLocal.of(context).getTranslated('الرجاء ادخال كلمه المرور'),
                              onSaved: (val) {
                                _passWord = val;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _isObscure,
                              hintText: "********************",
                              labelText: AppLocal.of(context)
                                  .getTranslated("كلمة المرور"),
                              iconColor: primaryGreenColor,
                              suffixWidget: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                                icon: _isObscure
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
                              height: 20,
                            ),
                            CustomgradentButton(
                              buttonWidth: null,
                              onPressed: () {

                              //  Authentication.Login(email, password, type);

                                if (_formKey.currentState!.validate()) {

                                  _formKey.currentState!.save();

                                  Navigator.pushNamed(context, "HomeScreen");
                                  _formKey.currentState?.reset();


                                    Authentication.SigIn(_phoneNumber!, _passWord!,"TRADER");
                                    //     .then(
                                    //       (user) => _formKey.currentState?.showSnackBar(
                                    //     SnackBar(
                                    //       backgroundColor: Colors.teal[200],
                                    //       content: Text(
                                    //         'user has been login',
                                    //         style: TextStyle(color: Colors.black,fontSize: 20,),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // );





                                }

                              },
                              child: Text(
                                AppLocal.of(context).getTranslated("دخول"),
                                style: Theme.of(context).textTheme.button,
                              ),
                              borderColor: Colors.white,
                              alignment: Alignment.center,
                              buttonheight: SizeConfig.defaultSize! * 6,


                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "ForgetPasswordScreen1");
                              },
                              child: Center(
                                child: Text(
                                  AppLocal.of(context)
                                      .getTranslated("نسيت كلمة المرور؟"),
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            CustomButton(
                              buttonWidth: MediaQuery.of(context).size.width,
                              borderRadius: 15.0,
                              borderColor: primaryGreenColor,
                              buttonHeight: SizeConfig.defaultSize! * 5.7,
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pushNamed(context, "SignUpScreen");
                              },
                              child: Text(
                                AppLocal.of(context).getTranslated(
                                    "لا أمتلك حساب؟ طلب تسجيل جديد"),
                                style: TextStyle(
                                    color: primaryGreenColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
