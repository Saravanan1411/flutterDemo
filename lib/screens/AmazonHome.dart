import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
//import 'package:flutterdemo/model.dart';

import '../examples/color.dart';
import '../model.dart';

class AmazonHomeScreen extends StatefulWidget {
  const AmazonHomeScreen({super.key});

  @override
  State<AmazonHomeScreen> createState() => _AmazonHomeScreenState();
}

class _AmazonHomeScreenState extends State<AmazonHomeScreen> {


  //location details
  var location = "Coimbatore";
  var pinCode = "641014";

  //headData
  final List<String> name = [
    'Electronics',
    'Mobiles',
    'Home',
    'Fashion',
    'miniTV',
    'Beauty',
    'Application',
    'Fresh',
    'Books, Toys',
    'Deals',
  ];

  //image data for top list

  final List<String> image =[
    'assets/electronics.png',
    'assets/electronics.png',
    'assets/phones.jpg',
    'assets/phones.jpg',
    'assets/electronics.png',
    'assets/electronics.png',
  ];

  final List<String> advt =[
    'assets/advt1.png',
    'assets/advt2.png',
    'assets/advt1.png',
    'assets/advt2.png',
  ];


  final List<String> deals = [
    'Deals under ₹200',
    'Starting ₹49',
    'Deals under ₹499',
    'Deals under ₹99',
    'Smartwatch deals',
    'Up to ₹33,499 off',
  ];

  final List<String> dealProduct =[
    'Lipsticks',
    'Shoes',
    'Cookware & dining',
    'Festive Decors',
    'Starting ₹899',
    'Clothing',
    'Deals on VIDA'
  ];

  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appbar with search bar & scan
      appBar: AppBar(
        flexibleSpace: Container(
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [amazonHeadGreen,amazonHeadGreen2],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            )
          ),
          child: Container(
            padding: const EdgeInsets.all(10),


            //searchbar
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  hintText: "Search Amazon.in",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  prefixIcon: Icon(Icons.search_outlined),
                  suffixIcon: IconButton(
                    icon:Icon(Icons.qr_code_scanner_outlined),
                    onPressed: () {},
                  )
                ),
              ),
          ),
        ),
      ),



      //body of the page
      body: SingleChildScrollView(
        child: Column(
          children: [

            // location container
            Container(
              decoration: BoxDecoration(
                color: locationColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("Delivered to ${location} ${pinCode} - Updated location",style: TextStyle(fontSize: 14,color:Colors.black54,fontWeight: FontWeight.w700),),
                  ],
                ),
              ),
            ),


            //list of heading data
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [amazonOrange,amazonPink],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lis.length,
                  itemBuilder: (BuildContext context ,int index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height:60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage(lis[index].image),
                                  fit: BoxFit.fill,
                              )
                            ),
                          ),
                          Text(lis[index].text),
                        ],
                      ),
                    );
                  }
              ),
            ),

            //Carousel container
            CarouselSlider.builder(
                itemCount: advt.length,
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  viewportFraction:1,
                  onPageChanged: (index,reason){
                    setState(() {
                      currentIndex = index;
                    });
                  }
                ),

              itemBuilder: (BuildContext context, int index, int pageViewIndex){
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(advt[index]),
                        fit: BoxFit.fill,
                      ),
                    ),
                    // child: SizedBox(
                    //   height: double.infinity,
                    //   width: double.infinity,
                    //   child: DotsIndicator(
                    //     dotsCount: advt.length,
                    //     position: currentIndex,
                    //   ),
                    // ),
                  );
              },
            ),


            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orangeAccent,amazonPink],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (BuildContext context , int index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("${image[index]}"),
                            fit: BoxFit.fill
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${deals[index]}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              Text("${dealProduct[index]}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),

                            ],
                          ),
                        ),
                      ),
                    );
                  }
              )
            ),

            //lower data grid
            Container(
              height: 420,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orangeAccent,amazonPink],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              ),

              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: advt.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height:160,
                                        width:double.infinity,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(advt[index]),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(child: Text('${name[index]}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),))
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              )
            )

          ],
        ),
      )
    );
  }
}
