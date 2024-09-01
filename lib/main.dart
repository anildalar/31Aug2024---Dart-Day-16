import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
// import package               as alias/SecondName
import 'package:http/http.dart' as http;

void main() {
  var ceo1 = Anil();
  runApp(ceo1);
}

class Anil extends StatelessWidget {
  //1. Property/Variable/State

  //2. Constructor

  //3. Method
  @override
  Widget build(BuildContext context) {
    //2. Class Instransition
    var ceo2 = Abhishek();
    return MaterialApp(home: ceo2);
  }
}

//1. Class Defination
class Abhishek extends StatefulWidget {
  //1. Property/Variable/State

  //2. Constructor

  //3. Method

  @override
  // ReturnType method(fa1,fa2,fa3,...){  return something; }
  //Long format for function defination
  State<Abhishek> createState() {
    return _AbhishekState();
  }
  //Short format for function defination
  //State createState() => _AbhishekState();
}

class _AbhishekState extends State<Abhishek> {
  //1. Property/Variable/State
  var name = "Anil Dollor"; //Dart Data Type String
  var favFruits = ["Apple", "Grapes", "Banana"]; //Dart Data Type List

  //2.Constructor

  //3.Method
  //1. Function defination
  Future<void> getFruits() async {
    print("Hello from getFruits");
    // async =parent
    //await = child
    var response =
        await http.get(Uri.parse('http://localhost:1337/api/fav-fruits'));
    if (response.statusCode == 200) {
      //We got the data
      print(response.body);
      // Check and print the datatype of response.body
      print('The datatype of response.body is: ${response.body.runtimeType}');

      var x = jsonDecode(response.body);
      print(x);
      // Check and print the datatype of response.body
      print('The datatype of response.body is: ${x.runtimeType}');

      print(x['data']);
      print(x['data'][0]);
      print(x['data'][0]['attributes']);
      print(x['data'][0]['attributes']['name']);
    }
    // I am going to call the api
  }

  //ReturnType method(VariableType fa1){}
  @override
  void initState() {
    //2. Function calling
    getFruits();
    // Change the state after 5 seconds
    //Class(CCA1,CCA2)
    //Class(ceo,cbfn)
    Timer(Duration(seconds: 5), () {
      setState(() {
        //this= cio
        //this.member
        //1. property 2. construtor //3. method
        //this.property
        this.name = "Abhishek Chourasiya";
      });
    });
    //Change the state immiditalty
    //setState(()=>{}) //cbfn
  }

  //ReturnType method(VariableType fa1,VariableType fa2..){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
              itemCount: favFruits.length,
              itemBuilder: (context, index) {
                //cbfn
                //Every statemetn is terminated by semi-colon
                //Every funtion may return some
                return ListTile(
                  title: Text(favFruits[index]),
                );
              })),
    );
  }
}
