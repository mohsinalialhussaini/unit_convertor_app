import 'package:flutter/material.dart';

class English extends StatefulWidget {
  @override
  _EnglishState createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  @override
  Widget build(BuildContext context) {
    return (Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: 11,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 7.2,
                mainAxisSpacing: 7.2
            ),
            // ignore: missing_return
            itemBuilder: (context, int index) {
              if (index == 0) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Temperature', Colors.blue,
                      'Icons/temp.png', 'Temp'),
                );
              } else if (index == 1) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Length', Colors.grey,
                      'Icons/length.png', 'Length'),
                );
              } else if (index == 2) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Data Transfer \n' + 'Rate',
                      Colors.deepPurple, 'Icons/data.png', 'Rate'),
                );
              } else if (index == 3) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Speed', Colors.orange,
                      'Icons/speed.png', 'Speed'),
                );
              } else if (index == 4) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Digital Storage', Colors.red,
                      'Icons/digital.png', 'Storage'),
                );
              } else if (index == 5) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(
                      context, 'Time', Colors.teal, 'Icons/time.png', 'Time'),
                );
              } else if (index == 6) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Mass', Colors.brown,
                      'Icons/weight.png', 'Mass'),
                );
              } else if (index == 7) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Area',
                      Colors.deepOrangeAccent, 'Icons/area.png', 'Area'),
                );
              } else if (index == 8) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Energy', Colors.purpleAccent,
                      'Icons/energy.png', 'Energy'),
                );
              } else if (index == 9) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Frequency', Colors.teal,
                      'Icons/frequency.png', 'Frequency'),
                );
              } else if (index == 10) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TilebuttonMenu(context, 'Fuel_Economy', Colors.pinkAccent,
                      'Icons/fuel.png', 'Fuel_Economy'),
                );
              }
            })));
  }
}

FlatButton TilebuttonMenu(
    BuildContext context, String title, Color color, String img, String route) {
  return new FlatButton(
    shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(23.0)),
    color: color,
    child: Padding(
      padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: new Container(
          height: 100.0,
          width: 100.0,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Image.asset(
                    img,
                    width: 40,
                    height: 40,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Text(
                    title,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 12.5,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          )),
    ),
    onPressed: () {
      Navigator.pushNamed(context, '$route');
    },
  );
}
