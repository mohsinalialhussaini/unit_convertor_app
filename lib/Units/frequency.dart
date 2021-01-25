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

class Frequency extends StatefulWidget {
  @override
  _FrequencyState createState() => _FrequencyState();
}

class _FrequencyState extends State<Frequency> {
  FromUser selectedUser;
  ToUser ToselectedUser;
  List<FromUser> users = <FromUser>[
    const FromUser('Hertz'), const FromUser('Kilohertz'),
    const FromUser('Megahertz'), const FromUser('Gigahertz'),
  ];
  List<ToUser> Tousers = <ToUser>[
    const ToUser('Hertz'), const ToUser('Kilohertz'),
    const ToUser('Megahertz'), const ToUser('Gigahertz'),
  ];
  final _unitController  = TextEditingController();
  var results = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Frequency Converter'),
        centerTitle: true,
        backgroundColor: Colors.teal,
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
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(Icons.edit, color: Colors.teal,),
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

                        //Hertz
                        if(selectedUser.name == 'Hertz' && ToselectedUser.tname == 'Kilohertz' ){

                          results = '${int.parse(_unitController.text)/1000}';
                        }
                        else if(selectedUser.name == 'Hertz' && ToselectedUser.tname == 'Megahertz'){

                          results = '${int.parse(_unitController.text)/1e+6}';
                        }
                        else if(selectedUser.name == 'Hertz' && ToselectedUser.tname == 'Gigahertz'){

                          results = '${int.parse(_unitController.text)/1e+9}';
                        }

                        //Kilohertz
                        if(selectedUser.name == 'Kilohertz' && ToselectedUser.tname == 'Hertz' ){

                          results = '${int.parse(_unitController.text)*1000}';
                        }
                        else if(selectedUser.name == 'Kilohertz' && ToselectedUser.tname == 'Megahertz'){

                          results = '${int.parse(_unitController.text)/1000}';
                        }
                        else if(selectedUser.name == 'Kilohertz' && ToselectedUser.tname == 'Gigahertz'){

                          results = '${int.parse(_unitController.text)/1e+6}';
                        }


                        //Megahertz
                        if(selectedUser.name == 'Megahertz' && ToselectedUser.tname == 'Hertz' ){

                          results = '${int.parse(_unitController.text)*1e+6}';
                        }
                        else if(selectedUser.name == 'Megahertz' && ToselectedUser.tname == 'Kilohertz'){

                          results = '${int.parse(_unitController.text)*1000}';
                        }
                        else if(selectedUser.name == 'Megahertz' && ToselectedUser.tname == 'Gigahertz'){

                          results = '${int.parse(_unitController.text)/1000}';
                        }


                        //Gigahertz
                        if(selectedUser.name == 'Gigahertz' && ToselectedUser.tname == 'Hertz' ){

                          results = '${int.parse(_unitController.text)*1e+9}';
                        }
                        else if(selectedUser.name == 'Gigahertz' && ToselectedUser.tname == 'Kilohertz'){

                          results = '${int.parse(_unitController.text)*1e+6}';
                        }
                        else if(selectedUser.name == 'Gigahertz' && ToselectedUser.tname == 'Megahertz'){

                          results = '${int.parse(_unitController.text)*1000}';
                        }


                        else if(
                        selectedUser.name == 'Gigahertz' && ToselectedUser.tname == 'Gigahertz'
                            || selectedUser.name == 'Megahertz' && ToselectedUser.tname == 'Megahertz'
                            || selectedUser.name == 'Kilohertz' && ToselectedUser.tname == 'Kilohertz'
                            || selectedUser.name == 'Hertz' && ToselectedUser.tname == 'Hertz'

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


