import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'Battery.dart';

void main() {
  runApp(Home());
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget portrait() {
    return MaterialApp(
      home: Material(
        color: Colors.blueGrey[900],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.05),),
              Material(
                color: Colors.blueGrey[900],
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  color: Colors.lightGreen,
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => BatteryTemp()),);
                  },
                  splashColor: Colors.red,
                  //padding: EdgeInsets.all(10.0),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.01),),
              Container(
                height: (MediaQuery.of(context).size.height)*0.3,
                width: (MediaQuery.of(context).size.width)*0.3,
                child: Center(
                  child: new Image.asset('images/fb.png'),
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height)*0.2,
                width: (MediaQuery.of(context).size.width),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'USERNAME',
                      style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.height)*0.02,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    Container(width: (MediaQuery.of(context).size.width)*0.7,child: new TextFormField(
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                        //fillColor: Colors.red,
                        focusColor: Colors.black87,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular((MediaQuery.of(context).size.height)*0.1),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),),
                    Container(
                      height: (MediaQuery.of(context).size.height)*0.2,
                      width: (MediaQuery.of(context).size.width),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'PASSWORD',
                            style: TextStyle(
                              fontSize: (MediaQuery.of(context).size.height)*0.02,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                          Container(width: (MediaQuery.of(context).size.width)*0.7 , child: new TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.red,
                              border: new OutlineInputBorder(
                                borderRadius:new BorderRadius.circular((MediaQuery.of(context).size.height)*0.1),
                                borderSide: BorderSide(),
                              ),
                            ),
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blueGrey[900],
      home: OrientationBuilder(
        builder: (context,orientation) {
          if (orientation == Orientation.portrait){
            return portrait();
          }else{
            return portrait();
          }
        },
      ),
    );
  }
}
