import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> image = <String>[
      'assets/profileImage.jpeg',
      'assets/profileImage1.jpeg',
      'assets/profileImage2.jpeg',
      'assets/profileImage1.jpeg',
      'assets/profileImage3.jpeg',
    ];

    final List<String> name = <String>[
      "Tony",
      "Elisa",
      "Mark",
      "Steve",
      "Antony"
    ];
    return Scaffold(
        body:

        Column(

          children: [

            Container(
              height: 400,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 10, // spacing between rows
                  crossAxisSpacing: 20, // spacing between columns
                ),
                padding: EdgeInsets.all(8.0), // padding around the grid
                itemCount: 5, // total number of items
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue, // color of grid items
                    child: Center(
                      child: Text(
                        "ok",
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),



            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemCount: 5,
                  itemBuilder: (BuildContext con,index)
                      {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 300,
                            color: Colors.cyan,
                            child: Text("ok"),
                          ),
                        );
                      }
              ),
            ),

            CarouselSlider.builder(
               options: CarouselOptions(
        height: 200,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          //onPageChanged: callbackFunction,

        ),
              itemCount: 15,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
              {
               return Container(
                  height: 100,
                  width: 300,
                  color: Colors.cyan,
                  child: Text(itemIndex.toString()),
                );
              }
            ),

            Container(
              height: 400,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 10, // spacing between rows
                  crossAxisSpacing: 20, // spacing between columns
                ),
                padding: EdgeInsets.all(8.0), // padding around the grid
                itemCount: 5, // total number of items
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue, // color of grid items
                    child: Center(
                      child: Text(
                        "ok",
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),



          ],
        )
        // Container(
        //   decoration: BoxDecoration(
        //       color: Colors.cyan
        //   ),
        //   child: Center(
        //     child: Container(
        //       height: 100,
        //       width: 200,
        //       decoration: BoxDecoration(
        //         border: Border.all(),
        //         borderRadius: BorderRadius.circular(10),
        //         color: Colors.white,
        //       ),
        //       child: ListView.builder(
        //         scrollDirection: Axis.horizontal,
        //         padding: const EdgeInsets.all(8),
        //         itemCount: name.length,
        //         itemBuilder: (BuildContext context, int index){
        //           return Row(
        //             children: [
        //               Center(
        //                   child: Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Column(
        //                       children: [
        //                         Container(
        //                           height: 50,
        //                           width: 50,
        //                           decoration: BoxDecoration(
        //                             image: DecorationImage(
        //                               image: AssetImage("${image[index]}"),
        //                             ),
        //                         ),
        //                       ),
        //
        //                       Container(
        //                         child: Text("${name[index]}",style: TextStyle(fontSize: 10,decoration: TextDecoration.none),),
        //                       )
        //
        //                     ],
        //                 ),
        //                   )
        //               ),
        //
        //           ],
        //         );
        //
        //       },
        //
        //         ),
        //     ),
        //   ),
        // ),
      );
  }
}
