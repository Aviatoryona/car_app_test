import 'dart:convert';

import 'package:http/http.dart' as http;
class Jobs{
// implement some state in this class . 

  var projectUrl = 'http://www.whateva.com';



  void fetchProjects()async{
    var response = await http.get(projectUrl,);
    // also know that the in the get function you can add a map of headers .
    if(response.statusCode == 200){
    var items = json.decode(response.body);
      print(items);
      // after getting this list of items make sure you make a model 
      //  add the list in a list<someModel>  using either a map or a foreach loop 

    }
  }
}