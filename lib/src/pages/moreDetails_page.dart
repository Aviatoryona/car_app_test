import 'package:flutter/material.dart';

class MoreDetails extends StatefulWidget {
  @override
  _MoreDetailsState createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black,),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              backgroundColor: Colors.white,
              actions: <Widget>[],
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace:FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(backgroundColor: Colors.pink,child: Text('₤'),),
                              SizedBox(width: 5,),
                              Text("1821",textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.w700),),
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
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: Text('Driving history',textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.pink,fontSize: 17),
                              ),flex: 2,),
                              Expanded(child: Text('I have had 7 driving lessons, i havent taken tests before'
                              ,style: TextStyle(fontWeight: FontWeight.w800),))
                            ],
                          ),
                          ButtonBar(
                            
                            alignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                color: Colors.amber,
                                child: Text('Claim job.'),
                                onPressed: (){},
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          )
                        ],
                      ),
                ),
              )
            ),
           
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Related jobs'),
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
                                Text("₤200",textAlign: TextAlign.left,style: TextStyle(color: Colors.amber,fontSize: 20),),
                              ],
                            ),
                             Divider(height: 5)
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
                              onPressed: (){
                               
                              },
                            ),
                            FlatButton(
                              color: Colors.amber,
                              child: Text('Claim job.'),
                              onPressed: (){},
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                                Text("₤200",textAlign: TextAlign.left,style: TextStyle(color: Colors.amber,fontSize: 20),),
                              ],
                            ),
                             Divider(height: 5)
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
                              onPressed: (){
                               
                              },
                            ),
                            FlatButton(
                              color: Colors.amber,
                              child: Text('Claim job.'),
                              onPressed: (){},
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
            ),
          ],
        )
      ),
    );
  }
}

