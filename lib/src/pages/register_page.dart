import 'package:car_app_test/src/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String _firstName,_lastName,_email,_phone,_address,_postCode,_password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          title: Text('logo here',style: TextStyle(color: Colors.black),),
          bottom: PreferredSize(
            preferredSize: Size(
              MediaQuery.of(context).size.width,
              50
            ),
           child:  Column(
              children: <Widget>[
                
                ListTile(
                  dense: true,
                  title: Text('Instructor'),
                  subtitle: Text('Register'),
                  trailing: FlatButton(
                    child: Text('I Have An account, Login',style: TextStyle(fontSize: 12),),
                    onPressed: (){},
                  ),
                )
              ],
            ),
          )
        ),
        body: Form(
            child: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: ListView(
              children: <Widget>[
                Text('Personal Details',style: TextStyle(fontSize: 16,color: Colors.pink),),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'First Name'),
                        validator: (first){
                          if(first.isEmpty){
                            return "please enter an first name";
                          }
                          
                        },
                        onSaved: (first) => _firstName=first,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Last Name'),
                        validator: (last){
                          if(last.isEmpty){
                            return "please enter an first name";
                          }
                          
                        },
                        onSaved: (last) => _lastName=last,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email address'),
                  validator: (emailInput){
                    if(emailInput.isEmpty){
                      return "please enter an email";
                    }
                    
                  },
                  onSaved: (emailInput) => _email=emailInput,

                    ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Phone'),
                  validator: (phoneInput){
                    if(phoneInput.isEmpty){
                      return "please enter an phone number";
                    }
                    
                  },
                  onSaved: (phoneInput) => _phone=phoneInput,

                    ),
                     Gender(),
                    TextFormField(
                  decoration: InputDecoration(labelText: 'Address'),
                  validator: (addressInput){
                    if(addressInput.isEmpty){
                      return "please enter an Address";
                    }
                    
                  },
                  onSaved: (addressInput) => _address=addressInput,

                    ),
                    TextFormField(
                  decoration: InputDecoration(labelText: 'Post Code'),
                  validator: (postInput){
                    if(postInput.isEmpty){
                      return "please enter an post code";
                    }
                    
                  },
                  onSaved: (postInput) => _postCode=postInput,

                    ),
                    SizedBox(height: 10,),
                    Text('Security Details',style: TextStyle(fontSize: 16,color: Colors.pink),),

                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                                  onSaved: (passwordInput) => _password=passwordInput,
                                  validator:(passwordInput){
                                  if(passwordInput.isEmpty){
                                    return 'please enter a password';
                                  }
                                  } ,
                                  decoration: InputDecoration(
                                    labelText: 'password',
                                   
                                    ),
                                  obscureText: true,
                                ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: TextFormField(
                                  onSaved: (passwordInput) => _password=passwordInput,
                                  validator:(passwordInput){
                                  if(passwordInput.isEmpty){
                                    return 'please enter a confirm password';
                                  }
                                  } ,
                                  decoration: InputDecoration(
                                    labelText: 'Confirm password',
                                   
                                    ),
                                  obscureText: true,
                                ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Align(
                     //  alignment: Alignment.center,
                      child: SizedBox(
                        height: 50.0,
                        width: 150.0,
                        child: FlatButton.icon(
                          icon: Icon(Icons.person),
                          onPressed: (){},
                          color: Colors.transparent,
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
                          label: Text('Profile photo',),
                        ),
                      ),
                    ),
                     SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                       //  alignment: Alignment.center,
                        child: SizedBox(
                          height: 50.0,
                          width: 200.0,
                          child: FlatButton(
                            onPressed: (){
                              if(_formKey.currentState.validate()){
                                // only gets here if the fields pass
                                _formKey.currentState.save();
                                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                              }
                            },
                            color: Colors.pink,
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                            child: Text('SIGN IN',style: Theme.of(context).primaryTextTheme.button,),
                          ),
                        ),
                      ),
                    )
                
              ],
            ),
          ),
        ),
    );
  }
}

class Gender extends StatefulWidget {
  const Gender({
    Key key,
  }) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio(
          groupValue: 1,
          value: 1,
          onChanged: (value){},
        ),
        Text('Male'),
        Radio(
          groupValue: 1,
          value: 1,
          onChanged: (value){},
        ),
        Text('Female'),
      ],
    );
  }
}