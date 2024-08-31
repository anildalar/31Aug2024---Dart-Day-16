import 'package:flutter/material.dart';
import 'dart:async';

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
  var name = "Anil Dollor";
  //2.Constructor

  //3.Method
  //ReturnType method(VariableType fa1){}
  @override
  void initState() {
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
      body: Text('Hello $name'),
    );
  }
}
