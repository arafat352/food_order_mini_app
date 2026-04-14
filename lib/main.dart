
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_mini_app/welcome_page/WelcomePage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
      body: WelComePage(),
     ),
   );
  }

}