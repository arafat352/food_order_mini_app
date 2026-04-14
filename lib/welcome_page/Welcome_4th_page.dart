import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_mini_app/Login_page/Login_page.dart';

class Welcome4thPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       padding: EdgeInsets.all(55),
       child: Column(
         children: [
           Center(
             child: Text("Bobo",style: TextStyle(fontSize: 26,fontStyle: FontStyle.italic,fontWeight: FontWeight.w800 ),),
           ),
           SizedBox(height: 26,),
           Center(
             child: Image.network('https://cdn.iconscout.com/icon/free/png-256/free-hamburger-icon-svg-download-png-1794075.png'),
           ),
           SizedBox(height: 26,),
           Center(
             child: Text("Join to get the\ndelicious quizines!",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25),),
           ),
           Spacer(),
           // SizedBox(height: 26,),
           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
           },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.blue,
                 foregroundColor: Colors.white,
                 padding: EdgeInsets.symmetric(horizontal: 35,vertical: 20),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadiusGeometry.circular(10),
                 )
               ),
               child: Text("Continue with Apple")),
           SizedBox(height: 10,),
           Text("or"),
           SizedBox(height: 30,),
           // Spacer(),
           Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(onPressed: (){},
                     style: IconButton.styleFrom(
                         backgroundColor: Colors.lightBlueAccent,
                         foregroundColor: Colors.white,
                         padding: EdgeInsets.symmetric(horizontal: 30,),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadiusGeometry.circular(10)
                         )
                     ),
                     icon: Icon(Icons.g_mobiledata,size: 40,)),
                 IconButton(onPressed: (){},
                     style: IconButton.styleFrom(
                         backgroundColor: Colors.lightBlueAccent,
                         foregroundColor: Colors.white,
                         padding: EdgeInsets.symmetric(horizontal: 35,vertical: 5),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadiusGeometry.circular(10)
                         )
                     ),
                     icon: Icon(Icons.facebook,size: 25,)),
                 IconButton(onPressed: (){},
                     style: IconButton.styleFrom(
                         backgroundColor: Colors.lightBlueAccent,
                         foregroundColor: Colors.white,
                         padding: EdgeInsets.symmetric(horizontal: 35,vertical: 5),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadiusGeometry.circular(10)
                         )
                     ),
                     icon: Icon(Icons.mail,size: 25,)),

                 // IconButton(onPressed: (){},
                 //     style: IconButton.styleFrom(
                 //         backgroundColor: Colors.blueGrey,
                 //         foregroundColor: Colors.white,
                 //         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                 //         shape: RoundedRectangleBorder(
                 //             borderRadius: BorderRadiusGeometry.circular(10)
                 //         )
                 //     ),
                 //     icon: Icon(Icons.g_mobiledata,size: 25,)),
               ],

             ),

           ),
           Spacer(),
         ],
       ),
     ),
   );
  }
}