import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/gen/assets.gen.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_button.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/labeled_field.dart';
import 'package:noor_alkisaa/controller/app_local.dart';

class AddPowers2 extends StatefulWidget {
  const AddPowers2({Key? key}) : super(key: key);

  @override
  State<AddPowers2> createState() => AddPowers2State();
}

class AddPowers2State extends State<AddPowers2> {
  bool _isObscure = true;
  bool _isObscure2 = true;
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // final _formKey = GlobalKey<FormState>();
    //final textEditingController1 = TextEditingController();
    //final textEditingController2 = TextEditingController();
    //bool _passwordVisible = false;
    // final _userPasswordController = TextEditingController();
    String? _passWord, _phoneNumber , _name;

    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocal.of(context).getTranslated("اضافه صلاحيات"),
        ),
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
            Navigator.pop(context);
            // do something
          },
        ),
        actions: <Widget>[
          GestureDetector(
            child: Image.asset("assets/images/question.png"),
            onTap: () {
              Navigator.pushNamed(context, "TechnicalSupport");
            },
          ),
        ],
      ),

      body: ListView(children: [
        Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(

                      top: SizeConfig.defaultSize! * 3,
                      right: SizeConfig.defaultSize! * 2,
                      left: SizeConfig.defaultSize! * 2,
                    ),
                  child: Container(
                    child: Column(children: <Widget>[
                      Container(

                        child: Column(

                          children: [

                           Container(
                             height: MediaQuery.of(context).size.height*0.76,
                             child: Column(
                             children: [
                               CustomTextFieldWithLabel(

                                 onSaved: (val) {
                                   setState(() {
                                     _name = val;
                                   });
                                 },
                                 keyboardType: TextInputType.name,
                                 obscureText: false,
                                 labelText: AppLocal.of(context)
                                     .getTranslated("الاسم"),
                                 iconColor: primaryGreenColor,
                                 suffixWidget: Icon(
                                   Icons.person,
                                   color: primaryGreenColor,
                                   size: 30,
                                 ),

                                 hintText: "مصطفى محمد",
                                 errorMessage: AppLocal.of(context).getTranslated('الرجاء ادخال الاسم'),
                               ),
                               SizedBox(
                                 height: SizeConfig.defaultSize! * 3,
                               ),

                               CustomTextFieldWithLabel(

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
                                 height: SizeConfig.defaultSize! * 3,
                               ),

                               CustomTextFieldWithLabel(

                                 errorMessage: AppLocal.of(context).getTranslated("الرجاء تاكيد كلمه المرور"),
                                 onSaved: (val) {
                                   _passWord = val;
                                 },
                                 keyboardType: TextInputType.visiblePassword,
                                 obscureText: _isObscure2,
                                 hintText: "********************",
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
                                 height: 20,
                               ),
                             ],
                             ),
                           ),

                            Container(
                              height: MediaQuery.of(context).size.height*0.24,
                              child: Column(
                                children: [
                                  CustomgradentButton(
                                    buttonWidth: null,
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {

                                        _formKey.currentState!.save();

                                        Navigator.pushNamed(context, "HomeScreen");
                                        _formKey.currentState?.reset();



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
                                ],
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

    /*return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocal.of(context).getTranslated("اضافه صلاحيات"),
        ),
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
            Navigator.pop(context);
            // do something
          },
        ),
        actions: <Widget>[
          GestureDetector(
            child: Image.asset("assets/images/question.png"),
            onTap: () {
              Navigator.pushNamed(context, "TechnicalSupport");
            },
          ),
        ],
      ),
      body: ListView(
          children: [
            Form(
              key: _formkey,
              child: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize! * 3,
                      right: SizeConfig.defaultSize! * 2,
                      left: SizeConfig.defaultSize! * 2,
                    ),
                    child: Column(children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              CustomTextFieldWithLabel(

                                onSaved: (val) {
                                  setState(() {
                                    _phoneNumber = val as int?;
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
                              SizedBox(
                                height: SizeConfig.defaultSize! * 2,
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
                                height: SizeConfig.defaultSize! * 2,
                              ),/*
                      CustomTextFieldWithLabel(
                        //controller: textEditingController,
                        // errorMessage: "AppLocal.of(context).getTranslated('الرجاء ادخال كلمه المرور')",
                        hintText: "**********************",
                        onSaved: (val) {},
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isObscure1,
                        labelText:
                            AppLocal.of(context).getTranslated("كلمة المرور"),
                        iconColor: primaryGreenColor,
                        suffixWidget: IconButton(
                          color: primaryGreenColor,
                          onPressed: () {
                            setState(() {
                              _isObscure1 = !_isObscure1;
                            });
                          },
                          icon: _isObscure1
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFieldWithLabel(
                        hintText: "********************",
                        // errorMessage:AppLocal.of(context)
                        //     .getTranslated('الرجاء تاكيد كلمه المرور') ,
                        onSaved: (val) {},
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isObscure2,
                        labelText:
                            AppLocal.of(context).getTranslated("تأكيد كلمة المرور"),
                        iconColor: primaryGreenColor,
                        suffixWidget: IconButton(
                          color: primaryGreenColor,
                          onPressed: () {
                            setState(() {
                              _isObscure2 = !_isObscure2;
                            });
                          },
                          icon: _isObscure2
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                      */
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              CustomgradentButton(
                                  buttonWidth: null,
                                  buttonheight: 50,
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      _formkey.currentState!.save();

                                      // Navigator.pushNamed(context, "SignInScreen");

                                      //  _formkey.currentState!.reset();
                                    }
                                  },
                                  child: Center(
                                    child: Text(
                                      AppLocal.of(context).getTranslated("التالى"),
                                      style: Theme.of(context).textTheme.button,
                                    ),
                                  )),
                            ],
                          )),
                    ])),
              ),
            ),
          ],
      ),
    );*/
  //}
//}
