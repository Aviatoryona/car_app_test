import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Events'),
      ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('Events Schedule',style: TextStyle(fontSize: 25),)),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('PAST'),
                color: Colors.blue,
                onPressed: (){},
                
              ),
              FlatButton(
                child: Text('TODAY'),
                color: Colors.blue,
                onPressed: (){},
              ),
              FlatButton(
                child: Text('UPCOMING'),
                color: Colors.blue,
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }
}