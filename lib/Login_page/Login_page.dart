import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CreateProfilePage/Create_Profile_Page.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text('Bobo',
       ),
       leading: IconButton(onPressed: (){
         Navigator.pop(context);
       }, icon: Icon(Icons.arrow_back_ios_new),),
     ),
     body: Container(
       padding: EdgeInsets.all(35),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            Text("Log in to your\naccount",style:TextStyle(fontSize: 35,fontWeight: FontWeight.w800) , ),
           SizedBox(height: 10,),
           TextField(
                decoration: InputDecoration(
                  hintText: "email address",
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
           ),
           SizedBox(height: 10,),
           TextField(
             decoration: InputDecoration(
               hintText: "Password",
               prefixIcon: Icon(Icons.lock),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(12),
               ),
             ),
           ),
           SizedBox(height: 10,),
           TextButton(
             onPressed: () {},
             style: ButtonStyle(
               backgroundColor: WidgetStateProperty.all(Colors.transparent),
               shadowColor: WidgetStateProperty.all(Colors.transparent),
               overlayColor: WidgetStateProperty.all(Colors.transparent), // 👈 IMPORTANT
               padding: WidgetStateProperty.all(EdgeInsets.zero),
             ),
             child: Text(
               "Forgot password",
               style: TextStyle(color: Colors.blue),
             ),
           ),
           SizedBox(height: 10,),
           SizedBox(
             width: double.infinity, // 👈 full page width
             child: ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateProfilePage()));
             },
                 style: ElevatedButton.styleFrom(
                     elevation: 5,

                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadiusGeometry.circular(12),
                     ),
                 ),
                 child: Text("Login",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),))
             ,
           ),
           SizedBox(height: 25,),
           // Spacer(),
           Row(
             children: [
               Text('Don\'t have an account?'),
               SizedBox(width: 5,),
               TextButton(onPressed: (){},
                   style: ButtonStyle(
                     backgroundColor: WidgetStateProperty.all(Colors.transparent),
                     shadowColor: WidgetStateProperty.all(Colors.transparent),
                     overlayColor: WidgetStateProperty.all(Colors.transparent),
                     padding: WidgetStateProperty.all(EdgeInsets.zero)
                   ),
                   child: Text('Sign up'))
             ],
           )
         ],
       ),

     ),
   );
  }
}