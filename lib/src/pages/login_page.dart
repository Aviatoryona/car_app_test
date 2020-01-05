import 'package:car_app_test/src/pages/home.dart';
import 'package:car_app_test/src/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

final _formKey = GlobalKey<FormState>();


  String _email,_password;
  bool _isObscured = true;
  Color _eyeButtonColor = Colors.grey;

class _LoginPageState extends State<LoginPage> {


  TextFormField buildPasswordFormField(BuildContext context) {
    return TextFormField(
          onSaved: (passwordInput) => _password=passwordInput,
          validator:(passwordInput){
          if(passwordInput.isEmpty){
            return 'please enter a password';
          }
          } ,
          decoration: InputDecoration(
            labelText: 'please enter password',
            suffixIcon: IconButton(
              onPressed: (){
                if(_isObscured){
                setState(() {
                 _isObscured = false;
                 _eyeButtonColor = Theme.of(context).primaryColor; 
                });
                }else{
                  setState(() {
                   _isObscured = true;
                   _eyeButtonColor = Colors.grey; 

                  });
                }
              },
              icon: Icon(Icons.remove_red_eye ,color: _eyeButtonColor,),
              )
            ),
          obscureText: _isObscured,
         );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
           decoration: InputDecoration(labelText: 'Email address'),
           validator: (emailInput){
             if(emailInput.isEmpty){
               return "please enter an email";
             }
             
           },
           onSaved: (emailInput) => _email=emailInput,

         );
  }
  Padding buildForgotPassword() {
    return Padding(
           padding: const EdgeInsets.only(top: 8.0),
              child: Align(
             alignment: Alignment.centerRight,
             child: FlatButton(
               child: Text('forgot password ?',style: TextStyle(fontSize: 12.0,color: Colors.grey),),
               onPressed: (){},
               ),
           ),
         );
  }
  Align buildLoginButton(BuildContext context) {
    return Align(
          //  alignment: Alignment.center,
           child: SizedBox(
             height: 50.0,
             width: 150.0,
             child: FlatButton(
               onPressed: (){
                if(_formKey.currentState.validate()){
                  // only gets here if the fields pass
                  _formKey.currentState.save();
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
                }
               },
               color: Colors.orange,
               shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
               child: Text('SIGN IN',style: Theme.of(context).primaryTextTheme.button,),
             ),
           ),
         );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              FlatButton(
                child: Text('Register'),
                onPressed: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => RegisterPage()));
                },)
            ],),
            SizedBox(height: 30,),
            Container(height: 30,width: 100,child: Center(child: Text('LOGO HERE')),color: Colors.amber,),
            Text('You Choose We Connect'),

            SizedBox(height: 10,),
            ListTile(
              title: Text('Instructor',style: TextStyle(fontSize: 20),),
              subtitle: Text('Welcome back'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Login Now'),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      buildEmailFormField(),
                      SizedBox(height: 10,),
                      buildPasswordFormField(context),
                      SizedBox(height: 10,),
                      buildForgotPassword(),
                      SizedBox(height: 10,),
                      buildLoginButton(context)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}