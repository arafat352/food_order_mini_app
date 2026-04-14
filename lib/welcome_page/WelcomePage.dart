
import 'package:flutter/material.dart';
import 'Welcome_2nd_Page.dart';

class WelComePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       padding: EdgeInsets.all(24),
       child: Column(
         children: [
           SizedBox(height: 15,),
           Center(
             child:Text("Bobo",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w700,fontStyle: FontStyle.italic ),),
           ),
           SizedBox(height: 15,),
           Center(
             child: Image.network('https://cdni.iconscout.com/illustration/premium/thumb/girl-cooking-in-kitchen-illustration-svg-download-png-6556997.png'),
           ),
           Center(
             child: Text("Welcome to the\nmost tastiest app",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
           ),
           SizedBox(height: 25,),
           Center(
             child: Text('You know, this app is edible meaning you\n                           can eat it!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
           ),
            Spacer(),
           Container(
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     TextButton(
                       onPressed: () {},
                       style: TextButton.styleFrom(
                         backgroundColor: Colors.blueGrey,
                         foregroundColor: Colors.tealAccent,
                         padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10),
                         ),
                       ),
                       child: const Text(
                         'Skip',
                         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                       ),
                     ),

                     TextButton(
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome2ndPage()));
                       },
                       style: TextButton.styleFrom(
                         backgroundColor: Colors.teal,
                         foregroundColor: Colors.white,
                         padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10),
                         ),
                       ),
                       child: const Text('Next',
                         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                       ),
                     ),
                   ],
                 )
               ],
             ),
           ),
         ],
       ),
     ),
   );
  }
}