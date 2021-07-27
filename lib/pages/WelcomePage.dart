
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1532007271951-c487760934ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
  'https://images.unsplash.com/photo-1557180295-76eee20ae8aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
  'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  'https://images.unsplash.com/photo-1560393464-5c69a73c5770?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80',
  'https://images.unsplash.com/photo-1511300961358-669ca3ad05af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80',
  'https://images.unsplash.com/photo-1543582890-139a4ff9946e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=802&q=80',
];

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Flutter App"),
     ),
     body: Column(
       children: [
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Welcome Buddy !!",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w900)),
             ),
             Container(
               child: CarouselSlider.builder(
                 itemCount: imgList.length,
                 options: CarouselOptions(
                   autoPlay: true,
                   aspectRatio: 2.0,
                   enlargeCenterPage: true,

                 ), itemBuilder: (BuildContext context, int index, int realIndex) {
                   SizedBox(height: 200,);
                   return Container(
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(imgList[index],
                        fit: BoxFit.cover,width: 1000,),
                      ),
                    ),
                   );
               },
               ),
             ),
           ],
         ),
         SizedBox(height: 20,),
         Row(
           children: [
             SizedBox(height: 20,width: 20,),
             Container(height: 100,width: 180,
               child: Card(
                 shadowColor: Colors.deepPurpleAccent,
                 elevation: 10.0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8.0),
                 ),
                 semanticContainer: true,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                   child: Column(
                     children: [
                       Icon(
                         Icons.local_offer_sharp,
                         size: 40.0,
                         color: Colors.deepPurple,
                       ),
                       Text("Offer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                     ],
                   ),
                 ),
               ),
             ),
             Container(height: 100,width: 180,
               child: Card(
                 shadowColor: Colors.deepPurpleAccent,
                 elevation: 10.0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8.0),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                   child: Column(
                     children: [
                       Icon(
                         Icons.clean_hands_sharp,
                         size: 40.0,
                         color: Colors.deepPurple,
                       ),
                       Text("Learn",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                     ],
                   ),
                 ),
               ),
             ),
           ],
         ),
         Row(
           children: [
             SizedBox(height: 20,width: 20,),
             Container(height: 100,width: 180,
               child: Card(
                 shadowColor: Colors.deepPurpleAccent,
                 elevation: 10.0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8.0),
                 ),
                 semanticContainer: true,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                   child: Column(
                     children: [
                       Icon(
                         Icons.redeem,
                         size: 40.0,
                         color: Colors.deepPurple,
                       ),
                       Text("Redeem",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                     ],
                   ),
                 ),
               ),
             ),
             Container(height: 100,width: 180,
               child: Card(
                 shadowColor: Colors.deepPurpleAccent,
                 elevation: 10.0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8.0),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                   child: Column(
                     children: [
                       Icon(
                         Icons.storefront_sharp,
                         size: 40.0,
                         color: Colors.deepPurple,
                       ),
                       Text("Refer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                     ],
                   ),
                 ),
               ),
             ),
           ],
         ),
         Row(
           children: [
             SizedBox(height: 20,width: 20,),
             Container(height: 100,width: 180,
               child: Card(
                 shadowColor: Colors.deepPurpleAccent,
                 elevation: 10.0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8.0),
                 ),
                 semanticContainer: true,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                   child: Column(
                     children: [
                       Icon(
                         Icons.phone_android_rounded,
                         size: 40.0,
                         color: Colors.deepPurple,
                       ),
                       Text("Product",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                     ],
                   ),
                 ),
               ),
             ),
             Container(height: 100,width: 180,
               child: Card(
                 shadowColor: Colors.deepPurpleAccent,
                 elevation: 10.0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8.0),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                   child: Column(
                     children: [
                       Icon(
                         Icons.point_of_sale,
                         size: 40.0,
                         color: Colors.deepPurple,
                       ),
                       Text("Points",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                     ],
                   ),
                 ),
               ),
             ),
           ],
         ),



       ],
     ),
    );
  }
}
