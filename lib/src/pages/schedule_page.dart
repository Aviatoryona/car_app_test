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
            child: Text('Events Schedule'),
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