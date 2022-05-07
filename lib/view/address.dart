import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("العنوان"),
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
      body: Container(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize! * 1.0,
          right: SizeConfig.defaultSize! * 1.0,
          top: SizeConfig.defaultSize! * 2.0,
        ),
        child: Column(
          children: [
            Card(
             // shape: BorderRadius.all(Radius.circular(5)),
              elevation: 5.0,
              child: Container(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * 1.0,
                  bottom: SizeConfig.defaultSize! * 1.8,
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 1.3,),
                            child: Column(
                              children: [
                                Image.asset("assets/images/istockphoto.png")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "مركز ريحانة",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "اسم المسؤول : ",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  Text(
                                    "خالد احمد",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "الرقم التعريفي : ",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  Text(
                                    "DEL985458452",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 1.0,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  right: SizeConfig.defaultSize! * 2.0,
                  left: SizeConfig.defaultSize! * 2.0,
                  bottom: SizeConfig.defaultSize! * 2.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "حي المعلمين,الدورة,بغداد",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontFamily: "Dubai",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
