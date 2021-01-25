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

class Mass extends StatefulWidget {
  @override
  _MassState createState() => _MassState();
}

class _MassState extends State<Mass> {
  FromUser selectedUser;
  ToUser ToselectedUser;
  List<FromUser> users = <FromUser>[
    const FromUser('Tonne'), const FromUser('Kilogram'),
    const FromUser('Gram'), const FromUser('Milligram'),
    const FromUser('Microgram'), const FromUser('Pound'),
    const FromUser('Ounce'), const FromUser('Stone'),
  ];
  List<ToUser> Tousers = <ToUser>[
    const ToUser('Tonne'), const ToUser('Kilogram'),
    const ToUser('Gram'), const ToUser('Milligram'),
    const ToUser('Microgram'), const ToUser('Pound'),
    const ToUser('Ounce'), const ToUser('Stone'),
  ];
  final _unitController  = TextEditingController();
  var results = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Mass Converter'),
        centerTitle: true,
        backgroundColor: Colors.brown,
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
                      borderSide: BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(Icons.edit, color: Colors.brown,),
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

                        //Tonne
                        if(selectedUser.name == 'Tonne' && ToselectedUser.tname == 'Kilogram' ){

                          results = '${int.parse(_unitController.text)*1000}';
                        }
                        else if(selectedUser.name == 'Tonne' && ToselectedUser.tname == 'Gram'){

                          results = '${int.parse(_unitController.text)*1e+6}';
                        }
                        else if(selectedUser.name == 'Tonne' && ToselectedUser.tname == 'Milligram'){

                          results = '${int.parse(_unitController.text)*1e+9}';
                        }
                        else if(selectedUser.name == 'Tonne' && ToselectedUser.tname == 'Microgram'){

                          results = '${int.parse(_unitController.text)*1e+12}';
                        }
                        else if(selectedUser.name == 'Tonne' && ToselectedUser.tname == 'Stone'){

                          results = '${int.parse(_unitController.text)*157}';
                        }
                        else if(selectedUser.name == 'Tonne' && ToselectedUser.tname == 'Pound'){

                          results = '${int.parse(_unitController.text)*2205}';
                        }
                        else if(selectedUser.name == 'Tonne' && ToselectedUser.tname == 'Ounce'){

                          results = '${int.parse(_unitController.text)*35274}';
                        }


                        //Kilogram
                        if(selectedUser.name == 'Kilogram' && ToselectedUser.tname == 'Tonne' ){

                          results = '${int.parse(_unitController.text)/1000}';
                        }
                        else if(selectedUser.name == 'Kilogram' && ToselectedUser.tname == 'Gram'){

                          results = '${int.parse(_unitController.text)*1000}';
                        }
                        else if(selectedUser.name == 'Kilogram' && ToselectedUser.tname == 'Milligram'){

                          results = '${int.parse(_unitController.text)*1e+6}';
                        }
                        else if(selectedUser.name == 'Kilogram' && ToselectedUser.tname == 'Microgram'){

                          results = '${int.parse(_unitController.text)*1e+9}';
                        }
                        else if(selectedUser.name == 'Kilogram' && ToselectedUser.tname == 'Stone'){

                          results = '${int.parse(_unitController.text)/6.35}';
                        }
                        else if(selectedUser.name == 'Kilogram' && ToselectedUser.tname == 'Pound'){

                          results = '${int.parse(_unitController.text)*2.205}';
                        }
                        else if(selectedUser.name == 'Kilogram' && ToselectedUser.tname == 'Ounce'){

                          results = '${int.parse(_unitController.text)*35.274}';
                        }


                        //Gram
                        if(selectedUser.name == 'Gram' && ToselectedUser.tname == 'Tonne' ){

                          results = '${int.parse(_unitController.text)/1e+6}';
                        }
                        else if(selectedUser.name == 'Gram' && ToselectedUser.tname == 'Kilogram'){

                          results = '${int.parse(_unitController.text)/1000}';
                        }
                        else if(selectedUser.name == 'Gram' && ToselectedUser.tname == 'Milligram'){

                          results = '${int.parse(_unitController.text)*1000}';
                        }
                        else if(selectedUser.name == 'Gram' && ToselectedUser.tname == 'Microgram'){

                          results = '${int.parse(_unitController.text)*1e+6}';
                        }
                        else if(selectedUser.name == 'Gram' && ToselectedUser.tname == 'Stone'){

                          results = '${int.parse(_unitController.text)/6350}';
                        }
                        else if(selectedUser.name == 'Gram' && ToselectedUser.tname == 'Pound'){

                          results = '${int.parse(_unitController.text)/454}';
                        }
                        else if(selectedUser.name == 'Gram' && ToselectedUser.tname == 'Ounce'){

                          results = '${int.parse(_unitController.text)*28.35}';
                        }


                        //Milligram
                        if(selectedUser.name == 'Milligram' && ToselectedUser.tname == 'Tonne' ){

                          results = '${int.parse(_unitController.text)/1e+9}';
                        }
                        else if(selectedUser.name == 'Milligram' && ToselectedUser.tname == 'Kilogram'){

                          results = '${int.parse(_unitController.text)/1e+6}';
                        }
                        else if(selectedUser.name == 'Milligram' && ToselectedUser.tname == 'Gram'){

                          results = '${int.parse(_unitController.text)/1000}';
                        }
                        else if(selectedUser.name == 'Milligram' && ToselectedUser.tname == 'Microgram'){

                          results = '${int.parse(_unitController.text)*1000}';
                        }
                        else if(selectedUser.name == 'Milligram' && ToselectedUser.tname == 'Stone'){

                          results = '${int.parse(_unitController.text)/6.35e+6}';
                        }
                        else if(selectedUser.name == 'Milligram' && ToselectedUser.tname == 'Pound'){

                          results = '${int.parse(_unitController.text)/453592}';
                        }
                        else if(selectedUser.name == 'Milligram' && ToselectedUser.tname == 'Ounce'){

                          results = '${int.parse(_unitController.text)*28350}';
                        }


                        //Microgram
                        if(selectedUser.name == 'Microgram' && ToselectedUser.tname == 'Tonne' ){

                          results = '${int.parse(_unitController.text)/1e+12}';
                        }
                        else if(selectedUser.name == 'Microgram' && ToselectedUser.tname == 'Kilogram'){

                          results = '${int.parse(_unitController.text)/1e+9}';
                        }
                        else if(selectedUser.name == 'Microgram' && ToselectedUser.tname == 'Gram'){

                          results = '${int.parse(_unitController.text)/1e+6}';
                        }
                        else if(selectedUser.name == 'Microgram' && ToselectedUser.tname == 'Milligram'){

                          results = '${int.parse(_unitController.text)/1000}';
                        }
                        else if(selectedUser.name == 'Microgram' && ToselectedUser.tname == 'Stone'){

                          results = '${int.parse(_unitController.text)/6.35e+9}';
                        }
                        else if(selectedUser.name == 'Microgram' && ToselectedUser.tname == 'Pound'){

                          results = '${int.parse(_unitController.text)/4.536e+8}';
                        }
                        else if(selectedUser.name == 'Microgram' && ToselectedUser.tname == 'Ounce'){

                          results = '${int.parse(_unitController.text)*2.835e+7}';
                        }


                        //Stone
                        if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Tonne' ){

                          results = '${int.parse(_unitController.text)/157}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Kilogram'){

                          results = '${int.parse(_unitController.text)*6.35}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Gram'){

                          results = '${int.parse(_unitController.text)*6350}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Milligram'){

                          results = '${int.parse(_unitController.text)*6.35e+6}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Microgram'){

                          results = '${int.parse(_unitController.text)*6.35e+9}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Pound'){

                          results = '${int.parse(_unitController.text)*14}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Ounce'){

                          results = '${int.parse(_unitController.text)*224}';
                        }


                        //Pound
                        if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Tonne' ){

                          results = '${int.parse(_unitController.text)/2205}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Kilogram'){

                          results = '${int.parse(_unitController.text)/2.205}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Gram'){

                          results = '${int.parse(_unitController.text)*454}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Milligram'){

                          results = '${int.parse(_unitController.text)*453592}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Microgram'){

                          results = '${int.parse(_unitController.text)*4.536e+8}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Pound'){

                          results = '${int.parse(_unitController.text)/14}';
                        }
                        else if(selectedUser.name == 'Stone' && ToselectedUser.tname == 'Ounce'){

                          results = '${int.parse(_unitController.text)*16}';
                        }


                        //Ounce
                        if(selectedUser.name == 'Ounce' && ToselectedUser.tname == 'Tonne' ){

                          results = '${int.parse(_unitController.text)/35274}';
                        }
                        else if(selectedUser.name == 'Ounce' && ToselectedUser.tname == 'Kilogram'){

                          results = '${int.parse(_unitController.text)/35.274}';
                        }
                        else if(selectedUser.name == 'Ounce' && ToselectedUser.tname == 'Gram'){

                          results = '${int.parse(_unitController.text)*28.35}';
                        }
                        else if(selectedUser.name == 'Ounce' && ToselectedUser.tname == 'Milligram'){

                          results = '${int.parse(_unitController.text)*28350}';
                        }
                        else if(selectedUser.name == 'Ounce' && ToselectedUser.tname == 'Microgram'){

                          results = '${int.parse(_unitController.text)*2.835e+7}';
                        }
                        else if(selectedUser.name == 'Ounce' && ToselectedUser.tname == 'Pound'){

                          results = '${int.parse(_unitController.text)/224}';
                        }
                        else if(selectedUser.name == 'Ounce' && ToselectedUser.tname == 'Stone'){

                          results = '${int.parse(_unitController.text)/16}';
                        }





                        else if(
                        selectedUser.name == 'Ounce' && ToselectedUser.tname == 'Ounce'
                            || selectedUser.name == 'Stone' && ToselectedUser.tname == 'Stone'
                            || selectedUser.name == 'Pound' && ToselectedUser.tname == 'Pound'
                            || selectedUser.name == 'Microgram' && ToselectedUser.tname == 'Microgram'
                            || selectedUser.name == 'Milligram' && ToselectedUser.tname == 'Milligram'
                            || selectedUser.name == 'Gram' && ToselectedUser.tname == 'Gram'
                            || selectedUser.name == 'Kilogram' && ToselectedUser.tname == 'Kilogram'
                            || selectedUser.name == 'Tonne' && ToselectedUser.tname == 'Tonne'
                        ){

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


