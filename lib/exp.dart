/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BatteryTemp());
}

class BatteryTemp extends StatefulWidget {
  @override
  _BatteryTempState createState() => _BatteryTempState();
}

class _BatteryTempState extends State<BatteryTemp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Battery(),
    );
  }
}

class Battery extends StatefulWidget {
  @override
  _BatteryState createState() => _BatteryState();
}

class _BatteryState extends State<Battery> {

  Widget portrait() {
    return MaterialApp(
        home: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height)*0.1,
              width: (MediaQuery.of(context).size.width),
              //color: Colors.black,
              child: Material(
                color: Colors.black,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  color: Colors.lightGreen,
                  onPressed: () {},
                  splashColor: Colors.red,
                  padding: EdgeInsets.all(10.0),
                ),
              ),
            ),
            Card(
              child: Container(
                height: (MediaQuery.of(context).size.height)*0.4,
                width: (MediaQuery.of(context).size.width)*0.8,
                color: Colors.blueGrey[900],
                child: Text(
                  'BATTERY',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: (MediaQuery.of(context).size.height)*0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                height: (MediaQuery.of(context).size.height)*0.4,
                width: (MediaQuery.of(context).size.width)*0.8,
                color: Colors.blueGrey[900],
                child: Text(
                  'TEMPERATURE',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: (MediaQuery.of(context).size.height)*0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }


  Widget landscape() {
    return MaterialApp(
        home: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              child: Container(
                height: (MediaQuery.of(context).size.height)*0.8,
                width: (MediaQuery.of(context).size.width)*0.4,
                color: Colors.blueGrey[900],
                child: Text(
                  'BATTERY',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: (MediaQuery.of(context).size.height)*0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                height: (MediaQuery.of(context).size.height)*0.8,
                width: (MediaQuery.of(context).size.width)*0.4,
                color: Colors.blueGrey[900],
                child: Text(
                  'TEMPERATURE',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: (MediaQuery.of(context).size.height)*0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height),
              width: (MediaQuery.of(context).size.width)*0.1,
              //color: Colors.black,
              child: Material(
                color: Colors.black,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  color: Colors.lightGreen,
                  onPressed: () {},
                  splashColor: Colors.red,
                  padding: EdgeInsets.all(10.0),
                ),
              ),
            ),
          ],
        )
    );
  }




  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    //var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: OrientationBuilder(
        builder: (context,orientation) {
          if (orientation == Orientation.portrait){
            return portrait();
          }else{
            return landscape();
          }
        },
      ),
    );
  }
}*/