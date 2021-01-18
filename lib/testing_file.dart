import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _unitController  = TextEditingController();
  final _unitController1  = TextEditingController();
  var results = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
              child: Text('Convert'),
              onPressed: (){
                results = '${int.parse(_unitController.text) * int.parse(_unitController1.text)} ';
              }),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Value",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Icon(Icons.edit, color: Colors.blue,),
                  hintText: "Qty",
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                maxLength: 15,
                keyboardType: TextInputType.number,
                controller: _unitController,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Value",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Icon(Icons.edit, color: Colors.blue,),
                  hintText: "Price",
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                maxLength: 15,
                keyboardType: TextInputType.number,
                controller: _unitController1,
              ),
              // SizedBox(width: 20,)

            ],
          ),
          RaisedButton(
              child: Text('Convert'),
              onPressed: (){
                results = '${int.parse(_unitController.text) * int.parse(_unitController1.text)} ';
              }),
          Text(results)
        ],
      ),

    );
  }
}
