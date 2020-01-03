import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrivingCourse extends StatelessWidget {
  const DrivingCourse(this._controller);
  final ScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _controller,
      children: <Widget>[
        Card(
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                    elevation: 10,
                    margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                      child: Column(
                        children: <Widget>[
                          Text("₤4",textAlign: TextAlign.left,style: TextStyle(color: Colors.amber,fontSize: 20),),
                          SizedBox(height: 10,),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Course Hours',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('5 hrs',style: TextStyle(fontWeight: FontWeight.w800),))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Transmision',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('Manual',style: TextStyle(fontWeight: FontWeight.w800),),flex: 1,)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Distance (from pickup address)',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('1.9 miles',style: TextStyle(fontWeight: FontWeight.w800),),flex: 1,)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Pick up address',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('NWO10 OQX',style: TextStyle(fontWeight: FontWeight.w800),))
                            ],
                          ),
                          ButtonBar(
                            
                            alignment: MainAxisAlignment.start,
                            children: <Widget>[
                              FlatButton(
                                
                                child: Text('More info...'),
                                onPressed: (){},
                              ),
                              FlatButton(
                                color: Colors.amber,
                                child: Text('Claim job.'),
                                onPressed: (){},
                              )
                            ],
                          )
                        ],
                      ),
                    ),
              ),



        Card(
          shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),

          elevation: 10,
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
              child: Column(
                children: <Widget>[
                  Text("₤236",textAlign: TextAlign.left,style: TextStyle(color: Colors.amber,fontSize: 20),),
                  SizedBox(height: 10,),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: Text('Course Hours',textAlign: TextAlign.left,),flex: 2,),
                      Expanded(child: Text('10 hrs',style: TextStyle(fontWeight: FontWeight.w800),))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: Text('Transmision',textAlign: TextAlign.left,),flex: 2,),
                      Expanded(child: Text('Manual',style: TextStyle(fontWeight: FontWeight.w800),),flex: 1,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: Text('Distance (from pickup address)',textAlign: TextAlign.left,),flex: 2,),
                      Expanded(child: Text('1.9 miles',style: TextStyle(fontWeight: FontWeight.w800),),flex: 1,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: Text('Pick up address',textAlign: TextAlign.left,),flex: 2,),
                      Expanded(child: Text('NWO10 OQX',style: TextStyle(fontWeight: FontWeight.w800),))
                    ],
                  ),
                  ButtonBar(
                    
                    alignment: MainAxisAlignment.start,
                    children: <Widget>[
                      FlatButton(
                        
                        child: Text('More info...'),
                        onPressed: (){},
                      ),
                      FlatButton(
                        color: Colors.amber,
                        child: Text('Claim job.'),
                        onPressed: (){},
                      )
                    ],
                  )
                ],
              ),
            ),
      ),

      ],

    );
  }
}