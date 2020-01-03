import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';


class HireCar extends StatelessWidget {
  const HireCar(this.controller) ;
  final ScrollController controller;


  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
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
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("₤1821",textAlign: TextAlign.left,style: TextStyle(color: Colors.amber,fontSize: 20),),
                                ],
                              ),
                               Divider(height: 10,color: Colors.black,)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Driving Test Center')),
                              Expanded(child: Text('Aberdeen Ab123gq UK',style: TextStyle(fontWeight: FontWeight.w800),))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Test Date',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('2020-19-11',style: TextStyle(fontWeight: FontWeight.w800),))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Test Time',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('00-11-01',style: TextStyle(fontWeight: FontWeight.w800),))
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
                              Expanded(child: Text('3.37 miles',style: TextStyle(fontWeight: FontWeight.w800),),flex: 1,)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Pick up address',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('HAO 2FN',style: TextStyle(fontWeight: FontWeight.w800),))
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
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("₤1821",textAlign: TextAlign.left,style: TextStyle(color: Colors.amber,fontSize: 20),),
                                ],
                              ),
                               Divider(height: 10,color: Colors.black,)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Driving Test Center')),
                              Expanded(child: Text('Aberdeen Ab123gq UK',style: TextStyle(fontWeight: FontWeight.w800),))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Test Date',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('2020-19-11',style: TextStyle(fontWeight: FontWeight.w800),))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Test Time',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('00-11-01',style: TextStyle(fontWeight: FontWeight.w800),))
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
                              Expanded(child: Text('3.37 miles',style: TextStyle(fontWeight: FontWeight.w800),),flex: 1,)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Pick up address',textAlign: TextAlign.left,),flex: 2,),
                              Expanded(child: Text('HAO 2FN',style: TextStyle(fontWeight: FontWeight.w800),))
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