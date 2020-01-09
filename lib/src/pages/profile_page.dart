import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(  
        padding: const EdgeInsets.only(left:8.0,right: 8.0),   
        children: <Widget>[
          SizedBox(height: 5,),
          CircleAvatar(
            child: Text('Pic here'),
            radius: 40,
          ),
          SizedBox(height: 10,),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:ListTile(
                title: Text('Aviator k'),
                subtitle: Text('Instructor'),
              )
            ),
          ),
          SizedBox(height : 10),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Personal Details'),
                    trailing: Icon(Icons.arrow_right),
                    onTap: (){}
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Car Details'),
                    trailing: Icon(Icons.arrow_right),
                    onTap: (){}
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Statistics'),
                    trailing: Icon(Icons.arrow_right),
                    onTap: (){}
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Settings'),
                    trailing: Icon(Icons.arrow_right),
                    onTap: (){}
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Change password'),
                    trailing: Icon(Icons.arrow_right),
                    onTap: (){}
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('©2019'),
            ),
          )
        ],
      ),
      
    );
  }
}