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

class Fuel_Economy extends StatefulWidget {
  @override
  _Fuel_EconomyState createState() => _Fuel_EconomyState();
}

class _Fuel_EconomyState extends State<Fuel_Economy> {
  FromUser selectedUser;
  ToUser ToselectedUser;
  List<FromUser> users = <FromUser>[
    const FromUser('Miles per gallon'),
    const FromUser('Miles per gallon (Imperial)'),
    const FromUser('Kilometer per liter'),
    const FromUser('Liter per 100 kilometers'),
  ];
  List<ToUser> Tousers = <ToUser>[
    const ToUser('Miles per gallon'),
    const ToUser('Miles per gallon (Imperial)'),
    const ToUser('Kilometer per liter'),
    const ToUser('Liter per 100 kilometers'),
  ];
  final _unitController = TextEditingController();
  var results = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuel Economy Converter'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
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
                  )),
              SizedBox(height: 8.0),

              // Text-------------------
              Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Value",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(
                      Icons.edit,
                      color: Colors.pinkAccent,
                    ),
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
                    onPressed: () {
                      setState(() {
                        //Tonne
                        if (selectedUser.name == 'Miles per gallon' &&
                            ToselectedUser.tname == 'Miles per gallon (Imperial)') {
                          results = '${int.parse(_unitController.text) * 1.201}';
                        } else if (selectedUser.name == 'Miles per gallon' &&
                            ToselectedUser.tname == 'Kilometer per liter') {
                          results = '${int.parse(_unitController.text) /2.352}';
                        } else if (selectedUser.name == 'Miles per gallon' &&
                            ToselectedUser.tname == 'Liter per 100 kilometers') {
                          results = '${int.parse(_unitController.text) / 235.215}';
                        } else if (selectedUser.name == 'Miles per gallon' &&
                            ToselectedUser.tname == 'Miles per gallon') {
                          results = '${int.parse(_unitController.text)}';
                        }


                        if (selectedUser.name == 'Miles per gallon (Imperial)' &&
                            ToselectedUser.tname == 'Miles per gallon') {
                          results = '${int.parse(_unitController.text) / 1.201}';
                        } else if (selectedUser.name == 'Miles per gallon (Imperial)' &&
                            ToselectedUser.tname == 'Kilometer per liter') {
                          results = '${int.parse(_unitController.text) / 2.825}';
                        } else if (selectedUser.name == 'Miles per gallon (Imperial)' &&
                            ToselectedUser.tname == 'Liter per 100 kilometers') {
                          results = '${int.parse(_unitController.text) / 282.481}';
                        } else if (selectedUser.name == 'Miles per gallon (Imperial)' &&
                            ToselectedUser.tname == 'Miles per gallon (Imperial)') {
                          results = '${int.parse(_unitController.text)}';
                        }


                        if (selectedUser.name == 'Kilometer per liter' &&
                            ToselectedUser.tname == 'Miles per gallon') {
                          results = '${int.parse(_unitController.text) * 2.352}';
                        } else if (selectedUser.name == 'Kilometer per liter' &&
                            ToselectedUser.tname == 'Miles per gallon (Imperial)') {
                          results = '${int.parse(_unitController.text) * 2.825}';
                        } else if (selectedUser.name == 'Kilometer per liter' &&
                            ToselectedUser.tname == 'Liter per 100 kilometers') {
                          results = '${int.parse(_unitController.text) / 100}';
                        } else if (selectedUser.name == 'Kilometer per liter' &&
                            ToselectedUser.tname == 'Kilometer per liter') {
                          results = '${int.parse(_unitController.text)}';
                        }


                        if (selectedUser.name == 'Liter per 100 kilometers' &&
                            ToselectedUser.tname == 'Miles per gallon') {
                          results = '${int.parse(_unitController.text) / 235.215/100}';
                        } else if (selectedUser.name == 'Liter per 100 kilometers' &&
                            ToselectedUser.tname == 'Miles per gallon (Imperial)') {
                          results = '${int.parse(_unitController.text) / 282.481/100}';
                        } else if (selectedUser.name == 'Liter per 100 kilometers' &&
                            ToselectedUser.tname == 'Kilometer per liter') {
                          results = '${int.parse(_unitController.text) / 100 /100}';
                        } else if (selectedUser.name == 'Liter per 100 kilometers' &&
                            ToselectedUser.tname == 'Liter per 100 kilometers') {
                          results = '${int.parse(_unitController.text)}';
                        }
                      });
                    }),
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

              SizedBox(
                height: 30,
              ),

              // Reset Button
              FlatButton(
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
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
