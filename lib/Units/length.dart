import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FromUser {
  const FromUser(this.name);

  final String name;
}
class ToUser {
  const ToUser(this.tname);

  final String tname;
}

class Length extends StatefulWidget {
  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  FromUser selectedUser;
  ToUser ToselectedUser;
  List<FromUser> users = <FromUser>[
    const FromUser('Kilometer'), const FromUser('Meter'),
    const FromUser('Centimeter'), const FromUser('Millimetre'),
    const FromUser('Micrometres'), const FromUser('Nanometers'),
    const FromUser('Mile'), const FromUser('Yard'),
    const FromUser('Foot'), const FromUser('Inch'),
    const FromUser('Nautical Mile'),
  ];
  List<ToUser> Tousers = <ToUser>[
    const ToUser('Kilometer'), const ToUser('Meter'),
    const ToUser('Centimeter'), const ToUser('Millimetre'),
    const ToUser('Micrometres'), const ToUser('Nanometers'),
    const ToUser('Mile'), const ToUser('Yard'),
    const ToUser('Foot'), const ToUser('Inch'),
    const ToUser('Nautical Mile'),
  ];
  final _unitController  = TextEditingController();
  var results = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Length Converter'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //First Dropdown
              Padding(
                  padding: EdgeInsets.all(20),
                  child: new DropdownButton<FromUser>(
                    hint: new Text("From"),
                    value: selectedUser,
                    onChanged: (FromUser newValue) {
                      setState(() {
                        selectedUser = newValue;
                        print(selectedUser.name);
                      });
                    },
                    items: users.map((FromUser user) {
                      return new DropdownMenuItem<FromUser>(
                        value: user,
                        child: new Text(
                          user.name,
                          style: new TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                  )
              ),
              SizedBox(height: 8.0),

              // Text-------------------
              Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Value",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(Icons.edit, color: Colors.grey,),
                    hintText: "Value",
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  maxLength: 15,
                  keyboardType: TextInputType.number,
                  controller: _unitController,
                ),
              ),


              // To Dropdown
              Padding(
                padding: EdgeInsets.all(20),
                child: new DropdownButton<ToUser>(
                  hint: new Text("To"),
                  value: ToselectedUser,
                  onChanged: (ToUser newValue) {
                    setState(() {
                      ToselectedUser = newValue;
                    });
                  },
                  items: Tousers.map((ToUser Tousers) {
                    return new DropdownMenuItem<ToUser>(
                      value: Tousers,
                      child: new Text(
                        Tousers.tname,
                        style: new TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                ),
              ),


              // Convert Button
              Padding(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                    child: Text('Convert'),
                    onPressed: (){
                      setState(() {
                        // Kilometer
                        if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Meter' ){

                          results = '${int.parse(_unitController.text)*(1000)}';
                        }
                        else if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)*(100000)}';
                        }
                        else if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)*(1e+6)}';
                        }
                        else if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)*(1e+9)}';
                        }
                        else if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(1e+12)}';
                        }
                        else if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)*(1.609)}';
                        }
                        else if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)*(1094)}';
                        }
                        else if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)*(3281)}';
                        }
                        else if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)*(39370)}';
                        }
                        else if(selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(1.852)}';
                        }

                        //Meter
                        if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)/(1000)}';
                        }
                        else if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)*(100)}';
                        }
                        else if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)*(1000)}';
                        }
                        else if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)*(1e+6)}';
                        }
                        else if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(1e+9)}';
                        }
                        else if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)/(1609)}';
                        }
                        else if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)*(1.094)}';
                        }
                        else if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)*(3.281)}';
                        }
                        else if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)*(39.37)}';
                        }
                        else if(selectedUser.name == 'Meter' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(1852)}';
                        }

                        //Centimeter
                        if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)/(100000)}';
                        }
                        else if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Meter'){

                          results = '${int.parse(_unitController.text)/(100)}';
                        }
                        else if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)*(10)}';
                        }
                        else if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)*(10000)}';
                        }
                        else if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(1e+7)}';
                        }
                        else if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)/(160934)}';
                        }
                        else if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)/(91.44)}';
                        }
                        else if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)/(30.48)}';
                        }
                        else if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)/(2.54)}';
                        }
                        else if(selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(185200)}';
                        }

                        //Millimetre
                        if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)/(1e+6)}';
                        }
                        else if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Meter'){

                          results = '${int.parse(_unitController.text)/(1000)}';
                        }
                        else if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)/(10)}';
                        }
                        else if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)*(1000)}';
                        }
                        else if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(1e+6)}';
                        }
                        else if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)/(1.609e+6)}';
                        }
                        else if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)/(914)}';
                        }
                        else if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)/(305)}';
                        }
                        else if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)/(25.4)}';
                        }
                        else if(selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(1.852e+6)}';
                        }

                        //Micrometres
                        if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)/(1e+9)}';
                        }
                        else if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Meter'){

                          results = '${int.parse(_unitController.text)/(1e+6)}';
                        }
                        else if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)/(10000)}';
                        }
                        else if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)/(1000)}';
                        }
                        else if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(1000)}';
                        }
                        else if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)/(1.609e+9)}';
                        }
                        else if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)/(914400)}';
                        }
                        else if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)/(304800)}';
                        }
                        else if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)/(25400)}';
                        }
                        else if(selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(1.852e+9)}';
                        }

                        //Nanometers
                        if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)/(1e+12)}';
                        }
                        else if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Meter'){

                          results = '${int.parse(_unitController.text)/(1e+9)}';
                        }
                        else if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)/(1e+7)}';
                        }
                        else if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)/(1e+6)}';
                        }
                        else if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)/(1000)}';
                        }
                        else if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)/(1.609e+12)}';
                        }
                        else if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)/(9.144e+8)}';
                        }
                        else if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)/(3.048e+8)}';
                        }
                        else if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)/(2.54e+7)}';
                        }
                        else if(selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(1.852e+12)}';
                        }

                        //Mile
                        if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)*(1.609)}';
                        }
                        else if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Meter'){

                          results = '${int.parse(_unitController.text)*(1609)}';
                        }
                        else if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)*(160934)}';
                        }
                        else if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)*(1.609e+6)}';
                        }
                        else if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)*(1.609e+9)}';
                        }
                        else if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(1.609e+12)}';
                        }
                        else if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)*(1760)}';
                        }
                        else if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)*(5280)}';
                        }
                        else if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)*(63360)}';
                        }
                        else if(selectedUser.name == 'Mile' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(1.151)}';
                        }

                        //Yard
                        if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)/(1094)}';
                        }
                        else if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Meter'){

                          results = '${int.parse(_unitController.text)/(1.094)}';
                        }
                        else if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)*(91.44)}';
                        }
                        else if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)*(914)}';
                        }
                        else if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)*(914400)}';
                        }
                        else if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(9.144e+8)}';
                        }
                        else if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)/(1760)}';
                        }
                        else if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)*(3)}';
                        }
                        else if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)*(36)}';
                        }
                        else if(selectedUser.name == 'Yard' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(2025)}';
                        }

                        //Foot
                        if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)/(3281)}';
                        }
                        else if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Meter'){

                          results = '${int.parse(_unitController.text)/(3.281)}';
                        }
                        else if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)*(30.48)}';
                        }
                        else if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)*(305)}';
                        }
                        else if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)*(304800)}';
                        }
                        else if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(3.048e+8)}';
                        }
                        else if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)/(5280)}';
                        }
                        else if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)/(3)}';
                        }
                        else if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)*(12)}';
                        }
                        else if(selectedUser.name == 'Foot' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(6076)}';
                        }

                        //Inch
                        if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)/(39370)}';
                        }
                        else if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Meter'){

                          results = '${int.parse(_unitController.text)/(39.37)}';
                        }
                        else if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)*(2.54)}';
                        }
                        else if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)*(25.4)}';
                        }
                        else if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)*(25400)}';
                        }
                        else if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(2.54e+7)}';
                        }
                        else if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)/(63360)}';
                        }
                        else if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)/(36)}';
                        }
                        else if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)/(12)}';
                        }
                        else if(selectedUser.name == 'Inch' && ToselectedUser.tname == 'Nautical Mile'){

                          results = '${int.parse(_unitController.text)/(72913)}';
                        }

                        //Nautical Mile
                        if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Kilometer' ){

                          results = '${int.parse(_unitController.text)*(1.852)}';
                        }
                        else if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Meter'){

                          results = '${int.parse(_unitController.text)*(1852)}';
                        }
                        else if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Centimeter'){

                          results = '${int.parse(_unitController.text)*(185200)}';
                        }
                        else if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Millimetre'){

                          results = '${int.parse(_unitController.text)*(1.852e+6)}';
                        }
                        else if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Micrometres'){

                          results = '${int.parse(_unitController.text)*(1.852e+9)}';
                        }
                        else if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Nanometers'){

                          results = '${int.parse(_unitController.text)*(1.852e+12)}';
                        }
                        else if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Mile'){

                          results = '${int.parse(_unitController.text)*(1.151)}';
                        }
                        else if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Yard'){

                          results = '${int.parse(_unitController.text)/(2025)}';
                        }
                        else if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Foot'){

                          results = '${int.parse(_unitController.text)*(6076)}';
                        }
                        else if(selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Inch'){

                          results = '${int.parse(_unitController.text)*(72913)}';
                        }


                        else if(
                        selectedUser.name == 'Kilometer' && ToselectedUser.tname == 'Kilometer'
                            || selectedUser.name == 'Nautical Mile' && ToselectedUser.tname == 'Nautical Mile'
                            || selectedUser.name == 'Inch' && ToselectedUser.tname == 'Inch'
                            || selectedUser.name == 'Foot' && ToselectedUser.tname == 'Foot'
                            || selectedUser.name == 'Yard' && ToselectedUser.tname == 'Yard'
                            || selectedUser.name == 'Mile' && ToselectedUser.tname == 'Mile'
                            || selectedUser.name == 'Nanometers' && ToselectedUser.tname == 'Nanometers'
                            || selectedUser.name == 'Micrometres' && ToselectedUser.tname == 'Micrometres'
                            || selectedUser.name == 'Millimetre' && ToselectedUser.tname == 'Millimetre'
                            || selectedUser.name == 'Centimeter' && ToselectedUser.tname == 'Centimeter'
                            || selectedUser.name == 'Meter' && ToselectedUser.tname == 'Meter'
                        )


                        {
                          results = '${int.parse(_unitController.text)}';
                        }

                      });
                    }
                ),
              ),

              // Results............
              Container(
                width: 350,
                child: TextField(
                  //readOnly: true,
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: 'Result: $results',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //prefixText: 'Result: $results',
                    //prefixIcon: Icon(Icons.replay, color: Colors.blue,),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),



              SizedBox(height: 30,),

              // Reset Button
              FlatButton(
                child: Text('Reset', style: TextStyle(
                  fontSize: 20,
                ),),
                onPressed: (){
                  setState(() {
                    results = '';
                    _unitController.text = '';
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}


