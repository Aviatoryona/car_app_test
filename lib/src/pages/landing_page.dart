import 'package:car_app_test/src/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
          },
          child: Scaffold(
            body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                child: Text('LOGO HERE'),
              ),
                SizedBox(height: 10,),
              Text('Car For Driving Test'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('You'),
                  SizedBox(width: 5,),
                  Text('Choose',style: TextStyle(fontSize: 20,color: Colors.amber),),
                  SizedBox(width: 5,),
                  Text('We'),
                  SizedBox(width: 5,),
                  Text('Connect',style: TextStyle(fontSize: 20,color: Colors.amber),),
                ],
              )
              
            ],
            )
          ),
      ),
    );
  }
}