

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:noor_alkisaa/try.dart';
import 'package:noor_alkisaa/view/add_new_sell_point.dart';
import 'package:noor_alkisaa/view/add_powers.dart';
import 'package:noor_alkisaa/view/add_powers2.dart';
import 'package:noor_alkisaa/view/address.dart';
import 'package:noor_alkisaa/view/balance_requests.dart';
import 'package:noor_alkisaa/view/chating.dart';
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
import 'package:noor_alkisaa/view/powers.dart';
import 'package:noor_alkisaa/view/sell_point.dart';
import 'package:noor_alkisaa/view/signin_screen.dart';
import 'package:noor_alkisaa/view/signup_screen.dart';
import 'package:noor_alkisaa/view/start_screen.dart';
import 'package:noor_alkisaa/view/technical_support.dart';
import 'package:noor_alkisaa/view/timer.dart';
import 'package:noor_alkisaa/view/widgets/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/src/widgets/binding.dart';

import 'controller/app_local.dart';
import 'controller/lang.dart';
import 'helper/cache_helper.dart';
import 'helper/theme.dart';
import 'outstanding_selling_point.dart';


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
        nextScreen: SignInScreen(),
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
        "BalanceRequest":(context)=>BalanceRequest(),
        "TechnicalSupport":(context)=>TechnicalSupport(),
        "OutstandingSellingPoint":(context)=>OutstandingSellingPoint(),
        "AddPowers":(context)=>AddPowers(),
        "AddPowers2":(context)=>AddPowers2(),
        "Powers":(context)=>Powers(),






      },

    );
  }
}

/////////////////////////////////////////////
/*
import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AttendanceScreen(),
    );
  }
}

class AttendanceScreen extends StatefulWidget {
  AttendanceScreen();

  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  static var countdownDuration = Duration(minutes: 10);
  static var countdownDuration1 = Duration(minutes: 10);
  Duration duration = Duration();
  Duration duration1 = Duration();
  Timer? timer;
  Timer? timer1;
  bool countDown = true;
  bool countDown1 = true;

  @override
  void initState() {
    //var hours;
    var mints;
    var secs;
   // hours = int.parse("00");
    mints = int.parse("00");
    secs = int.parse("00");
    countdownDuration = Duration(minutes: mints, seconds: secs);
    startTimer1();
    reset1();
    //startTimer();
    //reset();
    //var hours1;
    var mints1;
    var secs1;
    //  hours1 = int.parse("10");
    mints1 = int.parse("01");
    secs1 = int.parse("00");
    countdownDuration1 =
        // Duration(hours: hours1, minutes: mints1, seconds: secs1);
        Duration(minutes: mints1, seconds: secs1);
    startTimer1();
    reset1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Timer Example"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              _onWillPop();
            },
          ),
        ),
        body: Container(
          color: Colors.black12,
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //     margin: EdgeInsets.only(top: 30, bottom: 30),
                //     child: buildTime()),
                // SizedBox(
                //   height: 20,
                // ),
                Text(
                  "Count down timer",
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                    margin: EdgeInsets.only(top: 30, bottom: 30),
                    child: buildTime1()),
              ]),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    final isRunning = timer == null ? false : timer!.isActive;
    if (isRunning) {
      timer!.cancel();
    }
    Navigator.of(context, rootNavigator: true).pop(context);
    return true;
  }

  // void reset() {
  //   if (countDown) {
  //     setState(() => duration = countdownDuration);
  //   } else {
  //     setState(() => duration = Duration());
  //   }
  // }

  void reset1() {
    if (countDown) {
      setState(() => duration1 = countdownDuration1);
    } else {
      setState(() => duration1 = Duration());
    }
  }

  // void startTimer() {
  //   timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  // }

  void startTimer1() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime1());
  }
  //
  // void addTime() {
  //   final addSeconds = 1;
  //   setState(() {
  //     final seconds = duration.inSeconds + addSeconds;
  //     if (seconds < 0) {
  //       timer?.cancel();
  //     } else {
  //       duration = Duration(seconds: seconds);
  //     }
  //   });
  // }

  void addTime1() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration1.inSeconds - addSeconds;
      if (seconds < 0) {
        timer1?.cancel();
      } else {
        duration1 = Duration(seconds: seconds);
      }
    });
  }

  // Widget buildTime() {
  //   String twoDigits(int n) => n.toString().padLeft(2, '0');
  //   final hours = twoDigits(duration.inHours);
  //   final minutes = twoDigits(duration.inMinutes.remainder(60));
  //   final seconds = twoDigits(duration.inSeconds.remainder(60));
  //   return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
  //     buildTimeCard(time: hours, header: 'HOURS'),
  //     SizedBox(
  //       width: 8,
  //     ),
  //     buildTimeCard(time: minutes, header: 'MINUTES'),
  //     SizedBox(
  //       width: 8,
  //     ),
  //     buildTimeCard(time: seconds, header: 'SECONDS'),
  //   ]);
  // }

  Widget buildTime1() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    //final hours = twoDigits(duration1.inHours);
    final minutes = twoDigits(duration1.inMinutes.remainder(1));
    final seconds = twoDigits(duration1.inSeconds.remainder(60));
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      //  buildTimeCard(time: hours, header: 'HOURS'),
      //   SizedBox(
      //     width: 8,
      //   ),
      buildTimeCard(time: minutes, ),

      SizedBox(
        width: 8,
      ),
      // Text(":"),
      // SizedBox(
      //   width: 4,
      // ),
      buildTimeCard(
        time: seconds,

      ),
    ]);
  }

  Widget buildTimeCard({required String time}) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   padding: EdgeInsets.all(8),
          //   decoration: BoxDecoration(
          //       color: Colors.white, borderRadius: BorderRadius.circular(20)),
          Text(
            time,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 50),
          ),
          //),
          SizedBox(
            height: 24,
          ),
          GestureDetector(
            child: Text(
              "Resend",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.red,
                  fontSize: 18),
            ),
            onTap: (){

              reset1();

            },
          ),
          // Text(header, style: TextStyle(color: Colors.black45)),
        ],
      );
}
*/






////////////////////

/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;
  AnimationController? _controller;
  int levelClock = 180;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
            levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
    );

    _controller?.forward();
  }

  GlobalKey _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Countdown(
              animation: StepTween(
                begin: levelClock, // THIS IS A USER ENTERED NUMBER
                end: 0,
              ).animate(_controller!), key: _key,
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              //style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({required Key key, required this.animation}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(1, '0')}';

    print('animation.value  ${animation.value} ');
    print('inMinutes ${clockTimer.inMinutes.toString()}');
    print('inSeconds ${clockTimer.inSeconds.toString()}');
    print('inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');

    return Text(
      "$timerText",
      style: TextStyle(
        fontSize: 110,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
*/