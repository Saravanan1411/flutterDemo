import 'dart:ui';

import  'package:flutter/material.dart';
import 'color.dart';


class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {



    return Scaffold(

      //main Container
      body: Container(
        height:double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wallpaper.jpeg"),
            fit: BoxFit.cover,
          ),
        ),

        //main column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                            sigmaY: 5,
                            sigmaX: 5
                        ),
                    child: Container(child: Text("ok")),
                ),
              ),
            )

            // //upper card container
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 8.0),
            //   child: BackdropFilter(
            //     filter: ImageFilter.blur(
            //         sigmaY: 5,
            //         sigmaX: 5
            //     ),
            //     child: Container(
            //       // height: screenHeight * 0.7,
            //       // width: screenWidth * 1,
            //       decoration: BoxDecoration(
            //           color: Colors.white.withOpacity(0.0),
            //           borderRadius: BorderRadius.circular(10)
            //       ),
            //
            //
            //       //card column
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 50.0,),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //
            //             //two images
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //
            //                   //first image
            //                   Column(
            //
            //                     children: [
            //
            //                       //image container
            //                       Container(
            //                         height:230,
            //                         width: 170,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(10),
            //                           color: white,
            //                         ),
            //                         child: Column(
            //                           children: [
            //
            //                             //image
            //                             Container(
            //                               height: 180,
            //                               width:double.infinity,
            //                               decoration: BoxDecoration(
            //                                 borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            //                                 image: DecorationImage(
            //                                   image: AssetImage("assets/profileImage.jpeg"),
            //                                   fit: BoxFit.fill,
            //                                 ),
            //                               ),
            //                             ),
            //
            //                             // Text below image
            //                             Padding(
            //                                 padding: EdgeInsets.only(top: 10),
            //                                 child: Text("Tony")
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //
            //                     ],
            //                   ),
            //
            //                   //second image
            //                   Column(
            //                     children: [
            //
            //                       //image container
            //                       Container(
            //                         height: 230,
            //                         width: 170,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(10),
            //                           color:white,
            //                         ),
            //                         child: Column(
            //                           children: [
            //
            //                             //image
            //                             Container(
            //                               height: 180,
            //                               width:double.infinity,
            //                               decoration: BoxDecoration(
            //                                 borderRadius: BorderRadius.vertical(top:Radius.circular(10)),
            //                                 image: DecorationImage(
            //                                   image: AssetImage("assets/profileImage1.jpeg"),
            //                                   fit:BoxFit.fill,
            //                                 )
            //                               ),
            //                             ),
            //
            //                             // Text below image
            //                             Padding(
            //                               padding: EdgeInsets.only(top: 10),
            //                                 child: Text("Elisa")
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ),
            //
            //             //row with image and an another set of images along with content
            //             Padding(
            //               padding: const EdgeInsets.only(top: 50.0),
            //               child: Row(
            //
            //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                 children: [
            //
            //                   //1st column with single image
            //                   Padding(
            //                     padding: const EdgeInsets.fromLTRB(20,0,0,0),
            //                     child: Column(
            //                       children: [
            //                         Container(
            //                           height:200,
            //                           width:150,
            //                           decoration: BoxDecoration(
            //                               borderRadius: BorderRadius.circular(10),
            //                               image: DecorationImage(
            //                                 image: AssetImage("assets/profileImage2.jpeg"),
            //                                 fit: BoxFit.fill,
            //                               ),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //
            //
            //                   //2nd column with two image
            //                   Padding(
            //                     padding: const EdgeInsets.fromLTRB(39,0,0,0),
            //                     child: Column(
            //                       children: [
            //                         //row to show images in 1 column & text in other column
            //                         Container(
            //                           height: 95,
            //                           width:80,
            //                           decoration: BoxDecoration(
            //                             image: DecorationImage(
            //                               image: AssetImage("assets/profileImage3.jpeg"),
            //                               fit: BoxFit.fill,
            //                             )
            //                           ),
            //                         ),
            //
            //                         Padding(
            //                           padding: const EdgeInsets.only(top:10.0),
            //                           child: Container(
            //                             height: 95,
            //                             width:80,
            //                             decoration: BoxDecoration(
            //                                 image: DecorationImage(
            //                                   image: AssetImage("assets/profileImage4.jpeg"),
            //                                   fit: BoxFit.fill,
            //                                 )
            //                             ),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //
            //
            //                   //3rd column with Text
            //                   Expanded(
            //                     child: Column(
            //                       children: [
            //                         SizedBox(
            //                             width: 100,
            //                             height: 200,
            //                             child: Text("Android Studio is the official integrated development environment for Google's Android operating system, built on JetBrains'.",style: appDescription,)),
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //
            //     ),
            //   ),
            // ),
            //
            // //lower container
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //      color: Colors.white.withOpacity(0.4),
            //    ),
            //
            //     //main column
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Column(
            //         children: [
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //
            //               //image column
            //             Column(
            //               children: [
            //                 Container(
            //                   height: 200,
            //                   width: 150,
            //                   decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(10),
            //                       image: DecorationImage(
            //                           image: AssetImage("assets/profileImage.jpeg"),
            //                         fit: BoxFit.fill,
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //
            //               //text field and button column
            //               Column(
            //                 children: [
            //                   // text field
            //                   SizedBox(
            //                     width: 200,
            //
            //                       child: TextFormField(
            //                         style: TextStyle( color: Colors.grey),
            //                         decoration: InputDecoration(
            //                           icon: Icon(Icons.lock),
            //                           labelText: "Password *",
            //                           hintText: "Enter Password ",
            //                           border: OutlineInputBorder(
            //
            //                           ),
            //                         ),
            //                       ),
            //                   ),
            //                   //button
            //                   Padding(
            //                     padding: const EdgeInsets.only(top: 20.0),
            //                     child: ElevatedButton(onPressed: (){}, child: Text("LOGIN")),
            //                   ),
            //
            //                 ],
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),

    );
  }
}
