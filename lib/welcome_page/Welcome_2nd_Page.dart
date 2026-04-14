import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_mini_app/welcome_page/welcome_3rd_page.dart';

class Welcome2ndPage extends StatelessWidget{
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
                  child: Image.network('https://png.pngtree.com/png-clipart/20230819/original/pngtree-home-parcel-delivery-semi-flat-rgb-color-vector-illustration-picture-image_8055441.png'),
                ),
                Center(
                  child: Text("We use nitro on\nbicycles for delivery!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
                ),
                SizedBox(height: 25,),
                Center(
                  child: Text('For very fast delivery we use nitro\non bicycles, kidding, but we re very fast.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
                Spacer(),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome3rdPage()));
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