import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:noor_alkisaa/try.dart';
import 'package:noor_alkisaa/view/add_new_sell_point.dart';
import 'package:noor_alkisaa/view/address.dart';
import 'package:noor_alkisaa/view/credit_move.dart';
import 'package:noor_alkisaa/view/credit_move2.dart';
import 'package:noor_alkisaa/view/credit_request.dart';
import 'package:noor_alkisaa/view/credit_send.dart';
import 'package:noor_alkisaa/view/data_modification.dart';
import 'package:noor_alkisaa/view/details_of_sells_point.dart';
import 'package:noor_alkisaa/view/forget_password1.dart';
import 'package:noor_alkisaa/view/forget_password2.dart';
import 'package:noor_alkisaa/view/forget_password3.dart';
import 'package:noor_alkisaa/view/home.dart';
import 'package:noor_alkisaa/view/sell_point.dart';
import 'package:noor_alkisaa/view/signin_screen.dart';
import 'package:noor_alkisaa/view/signup_screen.dart';
import 'package:noor_alkisaa/view/start_screen.dart';
import 'package:noor_alkisaa/view/widgets/pin_code_fields.dart';
import 'package:noor_alkisaa/view_model/app_local.dart';
import 'package:noor_alkisaa/view_model/lang.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helper/cache_helper.dart';
import 'helper/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  WidgetsFlutterBinding.ensureInitialized();
  LangViewModel appLocalization = LangViewModel();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("lang", "en");
  Locale locale = Locale(sharedPreferences.getString("lang")!, " ");

  runApp(MyApp(locale));
}

class MyApp extends StatefulWidget {
  final Locale? locale;

  MyApp(this.locale);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //  SizeConfig().init(context);
    CacheHelper.init();
    // SizeConfig().init(context);
    // TODO: implement build
    return GetMaterialApp(
      theme: theme(),
      localizationsDelegates: const [
        AppLocal.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      locale: widget.locale,
      localeResolutionCallback: (currentLocale, supportedLocales) {
        if (currentLocale != null) {
          for (Locale locale in supportedLocales) {
            if (currentLocale.languageCode == locale.languageCode) {
              return currentLocale;
            }
          }
        }
        return supportedLocales.first;
      },
      debugShowCheckedModeBanner: false,

      home: AnimatedSplashScreen(
        splashIconSize: 300,
        duration: 5000,
        splash: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/layer3.png",
              ),
            ),
          ),

        ),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
      ),

      //  initialRoute: "StartScreen",

      routes: {
        "StartScreen": (context) => StartScreen(),
        "PinCodeField": (context) => PinCodeField(),
        "SignInScreen": (context) => SignInScreen(),
        "ForgetPasswordScreen1": (context) => ForgetPasswordScreen1(),
        "ForgetPasswordScreen2": (context) => ForgetPasswordScreen2(),
        "ForgetPasswordScreen3": (context) => ForgetPasswordScreen3(),
        "SignUpScreen": (context) => SignUpScreen(),
        "HomeScreen": (context) => HomeScreen(),
        "Try": (context) => Try(),
        "CreditRequest": (context) => CreditRequest(),
        "CreditSend": (context) => CreditSend(),
        "CreditMove": (context) => CreditMove(),
        "CreditMove2": (context) => CreditMove2(),
        "Address": (context) => Address(),
        "SellPoint": (context) => SellPoint(),
      //  "AddNewSellPoint": (context) => AddNewSellPoint(),
        "DetailsOfSellsPoint": (context) => DetailsOfSellsPoint(),
        "DataModification": (context) => DataModification(),


      },

    );
  }
}
