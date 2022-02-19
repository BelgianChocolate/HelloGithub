// ignore_for_file: unnecessary_import
import 'package:flutter/material.dart';
//Above statement imports package for MaterialApp
import 'package:flutter/cupertino.dart';
//The above statement imports package for CupertinoApp

//A 3rd kind called the Widgets App is also available but does not need any package to be incldued
//The widgets app is more of a lower level app wherein you design everything...

//What are widgets? Everything.
//importing this package allows us to display all the widgets that are there...
//for eg. checkboxes etc
//Use commas when the widgets are at the same level... for eg
//AppBar and body...
//Use semicolon when the parent widget finishes ...for eg the scaffold

//CONTAINER
//The container is a parent widget that can contain multiple child widgets
//and manage them efficiently through width, height, padding, bakcground color, etc.
//It is a widget that combines common painting, positioning and sizing of the child widgets.

void main() {
  //The runApp function basically outputs whatever input we give.... as an App
  //It takes the widget APP as a parameter

  runApp(MaterialApp(
    title: "Demo App",
    //Visible when app is minimised
    home: HomePage(),
  ));
}

//Write stl
class HomePage extends StatelessWidget {
  //Homepage is a widget that inherits all properties of the parent Stateless widget
  //override means ki khud ka banayega and inherit nahi karega( sort of over write)
  @override
  Widget build(BuildContext context) {
    /*return Container(
      //NOTE:- Here, When we simply use home: Container(...)
      // HOT RELOAD does not WORK! This is because it does not know if the container 
      // is a stateless widget or a stateful widget
      color: Colors.yellow,
      //The colors is a function in the material.dart package!
      child: Text ("Hello World"),
    );*/
    return Scaffold(
      appBar: AppBar(
          //Visualise that the app has a head---appbar and the bdoy
          title: Text("This is a demo App")
          ),
      body: Container(
        child :Center(child: Text("Hello Flutter!"))
        //Use Ctrl + . to wrap with center etc
      ),
    );
  }
}
