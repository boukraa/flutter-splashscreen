import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
debugShowCheckedModeBanner: false,
home: SplashScreen(),

));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 45.0,
                        child: Icon(
                          Icons.blur_on,
                          color: Colors.blueAccent,
                          size: 60.0,

                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          "Medical App",
                          style:TextStyle(color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold)
                        )
                    ],
                  ),
                ),
              ),
              Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                
                  
                  Text(
                    "Find your doctor anytime",
                    style: TextStyle(color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.normal)
                    
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                   LinearProgressIndicator(backgroundColor: Colors.greenAccent)
                ],
              ),
              )
            ],
          )
        ],
      ),
      
    );
  }
}
