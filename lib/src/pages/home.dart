import 'package:car_app_test/src/pages/7DaysIntensiveCourse_page.dart';
import 'package:car_app_test/src/pages/drivingCourse_page.dart';
import 'package:car_app_test/src/pages/hireCar_page.dart';
import 'package:car_app_test/src/pages/profile_page.dart';
import 'package:car_app_test/src/pages/schedule_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _showAppBar = true;
  ScrollController _scrollBottomController = ScrollController();
  bool isScrollingDown = false;
  bool _show = true;
  double bottomBarHeight = 55;
  double _bottomBarOffset = 0;

  @override
  void initState() { 
    super.initState();
    myScroll();
    
    
  }
  @override
  void dispose() { 
    _scrollBottomController.removeListener((){});
    super.dispose();
  }

  void showBottomBar(){
    setState(() {
     _show =  true; 
     bottomBarHeight = 55;
    });
  }
  void hideBottomBar(){
    setState(() {
     _show = false; 
     bottomBarHeight = _bottomBarOffset;
    });
  }

  void myScroll() async{
    _scrollBottomController.addListener((){
     if(_scrollBottomController.position.userScrollDirection == ScrollDirection.reverse){
        if(!isScrollingDown){
        isScrollingDown = true;
        _showAppBar = false;
        hideBottomBar();
      }
     }
     if(_scrollBottomController.position.userScrollDirection == ScrollDirection.forward){
        if(isScrollingDown){
        isScrollingDown = false;
        _showAppBar = true;
        showBottomBar();
      }
     }
    });
  }


 int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:AppBar(

          elevation: 10,
          title: Text('New Jobs'),
          bottom: _showAppBar ?TabBar(
          tabs: <Widget>[
            Tab(
              child: Text('HIRE A CAR',style: TextStyle(fontSize: 12),),
            ),
            Tab(
             child: Text( 'DRIVING COURSE',style: TextStyle(fontSize: 12),),
            ),
            Tab(
             child: Text('7 DAYS INTENSIVE COURSE',style: TextStyle(fontSize: 12),),
            )
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.transparent,
          
        ): PreferredSize(
          child: Container(), 
          preferredSize: Size(0.0,0.0),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          )
        ],
        ),
        body:TabBarView(
          children: <Widget>[
            HireCar(this._scrollBottomController),
            DrivingCourse(this._scrollBottomController),
            IntensiveCourse(this._scrollBottomController)
          ],
        ),
        backgroundColor: Colors.white,
         drawer: Drawer(
           child: ListView(
             children: <Widget>[
               DrawerHeader(
                 child: Column(
                   children: <Widget>[
                     CircleAvatar(
                       radius: 30,
                       child: Text('pic here'),
                     ),
                     Center(
                       
                       child: ListTile(
                         dense: true,
                         title: Text('Aviator k'),
                         subtitle: Text('Aviatoryona@gmail.com'),
                       ),
                     )
                   ],
                 ),
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.account_circle),
                 title: Text('My Account'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.arrow_drop_up),
                 title: Text('Hired jobs'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.business_center),
                 title: Text('jobs'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.notifications),
                 title: Text('Notification'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.calendar_today),
                 title: Text('Diary'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.my_location),
                 title: Text('Location'),
                 onTap: (){},
               ),
               Divider(height: 5,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('More',textAlign: TextAlign.start,),
               ),

               ListTile(
                 dense: true,
                 leading: Icon(Icons.new_releases),
                 title: Text('Latest news'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.crop_free),
                 title: Text('FAQS'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.live_help),
                 title: Text('Help'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.settings),
                 title: Text('Settings'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.share),
                 title: Text('Share'),
                 onTap: (){},
               ),
               ListTile(
                 dense: true,
                 leading: Icon(Icons.local_gas_station),
                 title: Text('Logout'),
                 onTap: (){},
               ),

             ],
           ),
           
         ),

         bottomNavigationBar: Container(
           color: Colors.white,
           height: bottomBarHeight,
           width: MediaQuery.of(context).size.width,
           child: _show ? BottomNavigationBar(
             currentIndex: currentIndex,
             onTap: (int k){
               setState(() {
               currentIndex = k;
               if(k ==0){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
               } else if(k == 1){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SchedulePage()));
               }else{
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
               }
               });
             },
             items: [
               BottomNavigationBarItem(
                 title: Text('Jobs'),
                 icon: Icon(Icons.add_alarm)
               ),
               BottomNavigationBarItem(
                 title: Text('Schedule'),
                 icon: Icon(Icons.access_alarm)
               ),
               BottomNavigationBarItem(
                 title: Text('Me'),
                 icon: Icon(Icons.account_circle)
               )
             ],
           ):Container(
             color: Colors.transparent,
             width: MediaQuery.of(context).size.width,
           ),
         )
      ),

    );
    
  }
}
