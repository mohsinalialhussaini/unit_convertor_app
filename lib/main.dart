import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor_app/Language/arabic.dart';
import 'package:unit_convertor_app/Language/english.dart';
import 'package:unit_convertor_app/Language/hindi.dart';
import 'package:unit_convertor_app/Language/urdu.dart';
// import 'package:unit_convertor_app/Units/area.dart';
// import 'package:unit_convertor_app/Units/data_transfer_rate.dart';
// import 'package:unit_convertor_app/Units/energy.dart';
import 'package:unit_convertor_app/Units/frequency.dart';
import 'package:unit_convertor_app/Units/length.dart';
import 'package:unit_convertor_app/Units/mass.dart';

import 'Units/fuel_economy.dart';
// import 'package:unit_convertor_app/Units/speed.dart';
// import 'package:unit_convertor_app/Units/time.dart';
// import 'package:unit_convertor_app/Units/digital_storage.dart';
// import 'package:unit_convertor_app/Units/temprature.dart';
// import 'package:unit_convertor_app/testing_file.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => HomePage(),
      // 'Temp' : (context) => Temprature(),
      // 'Area' : (context) => Area(),
      // 'Rate' : (context) => Rate(),
      // 'Storage' : (context) => Storage(),
      // 'Energy' : (context) => Energy(),
      'Frequency' : (context) => Frequency(),
      'Length' : (context) => Length(),
      // 'Time' : (context) => Time(),
      'Mass' : (context) => Mass(),
      'Fuel_Economy' : (context) => Fuel_Economy(),
      // 'Speed' : (context) => Speed(),

    },
  ));
}



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final title = 'Unit Converter';

  Color PrimaryColor =  Color(0xff3f51b5);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PrimaryColor,
          title: Text(title),
          centerTitle: true,
          bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: false,
              indicatorWeight: 6.0,
              onTap: (index){
                setState(() {
                  switch(index){
                    case 0:
                      PrimaryColor= Color(0xff3f51b5);
                      break;
                    case 1:
                      PrimaryColor= Color(0xff4e5722);
                      break;
                    case 2:
                      PrimaryColor= Color(0xff4e5e63);
                      break;
                    case 3:
                      PrimaryColor= Color(0xfd767699);
                      break;
                  }
                });
              },
              tabs: [
                new Tab(text: "English",),
                new Tab(text: "Urdu",),
                new Tab(text: "Arabic",),
                new Tab(text: "Hindi",),
              ]),
        ),
        body:
        TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            English(),
            Urdu(),
            Arabic(),
            Hindi(),
          ],
        ),
      ),
    );
  }
}


