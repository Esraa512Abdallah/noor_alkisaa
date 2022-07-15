
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';

class CountDownTimer extends StatefulWidget {
  CountDownTimer();

  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
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

    var mints1;
    var secs1;
    mints1 = int.parse("01");
    secs1 = int.parse("00");
    countdownDuration1 =
    Duration(minutes: mints1, seconds: secs1);
    startTimer1();
    reset1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
        child: Container(

          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(

                    margin: EdgeInsets.only( bottom: 15),
                    child: buildTime1()),

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

              ]),
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


  void reset1() {
    if (countDown) {
      setState(() => duration1 = countdownDuration1);
    } else {
      setState(() => duration1 = Duration());
    }
  }


  void startTimer1() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime1());
  }


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


  Widget buildTime1() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');

    final minutes = twoDigits(duration1.inMinutes.remainder(1));
    final seconds = twoDigits(duration1.inSeconds.remainder(60));
    return Container(


      child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [

        buildTimeCard(time: minutes, ),

            SizedBox(
              width: 2,
            ),

        buildTimeCard(time: ":"),

        SizedBox(
          width: 2,
        ),


        buildTimeCard(
          time: seconds,

        ),
      ]),
    );
  }

  Widget buildTimeCard(
      {required String time}) =>
      Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(

            child: Text(
              time,
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: primaryGreenColor, fontSize: 20),
            ),
          ),



          // Text(header, style: TextStyle(color: Colors.black45)),
        ],
      );
}
