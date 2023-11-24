import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CarouselExample extends StatefulWidget {
  const CarouselExample({super.key});

  @override
  State<CarouselExample> createState() => _CarouselExampleState();
}

class _CarouselExampleState extends State<CarouselExample> {

  final List<String> image = <String>[
    'assets/profileImage.jpeg',
    'assets/profileImage1.jpeg',
    'assets/profileImage2.jpeg',
    'assets/profileImage1.jpeg',
    'assets/profileImage3.jpeg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Carousel"),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Container(
          child: Column(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 150.0,
                  aspectRatio: 16/9,
                  viewportFraction: 0.9, // size of display to show the container with other containers
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 10),
                  autoPlayAnimationDuration: Duration(seconds: 5),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index,reason){
                    setState(() {
                      currentIndex= index;
                    });
                  }
                ),
                  itemCount: image.length,
                  itemBuilder: (BuildContext context ,int itemIndex, int pageViewIndex) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("${image[itemIndex]}"),
                              fit: BoxFit.cover
                            ),
                            color: Colors.redAccent
                        ),
                    );
                  }
              ),
              SizedBox(
                height: 50,
                child: DotsIndicator(
                  dotsCount: image.length,
                  position: currentIndex,
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("ok")),

              GestureDetector(
                onTap: ()
                {

                },
                child: Container(
                  height: 100,
                    width: 100,
                    child: Image.asset("assets/profileImage.png")),
              ),
            ],
          ),

        ),
      )

    );
  }
}
