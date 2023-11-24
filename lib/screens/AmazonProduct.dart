import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../examples/color.dart';

class AmazonProduct extends StatefulWidget {
  const AmazonProduct({super.key});

  @override
  State<AmazonProduct> createState() => _AmazonProductState();
}

class _AmazonProductState extends State<AmazonProduct> {

  final List<String> productImages = [
    'assets/phone1.jpeg',
    'assets/phone2.jpeg',
    'assets/phone3.jpg',
    'assets/phone4.jpeg',
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //top heading
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Visit the Apple Store",style:TextStyle(fontSize: 12,color: Color(0xff008296),),),
                        Text("Apple iPhone 14 Pro (128 GB) - Deep purple",style: TextStyle(fontSize: 14,color: Color(0xff5c5d5f)),),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              itemSize:15,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => Icon(Icons.star,color: Colors.amber,),
                              onRatingUpdate: (double value) {  },
                            ),
                            Text("757",style: TextStyle(fontSize: 12),),
                          ],
                        ),
                      ],
                    )
                  ],

                ),
              ),

              //images & options
              Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount:productImages.length ,
                    options: CarouselOptions(
                      height: 500,
                      autoPlay: false,
                      viewportFraction: 1,
                        onPageChanged: (index,reason){
                          setState(() {
                            currentIndex= index;
                          });
                        }
                    ) ,
                    itemBuilder: (BuildContext context , int index, int pageIndex){
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(productImages[index]),

                          )
                        ),
                      );
                      },
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:offerBackground,
                      ),
                      child: Center(child: Text("29% off",style: TextStyle(fontSize: 14,color: white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Positioned(
                    top:10,
                    right:10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.ios_share),
                    ),
                  ),
                  Positioned(
                    bottom:10,
                    left:10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.favorite_outline),
                    ),
                  )
                ],
              ),

              //page indicator
              Column(
                children: [
                  Center(
                    child: SizedBox(

                      height: 30,
                      child: DotsIndicator(
                        decorator: DotsDecorator(
                          color: Colors.grey,
                          activeColor: dotGreen,
                        ),
                        dotsCount: productImages.length,
                        position: currentIndex,
                      ),
                    ),
                  ),
                ],
              ),

              //price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("₹1,29,900",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                  RichText(
                    text: TextSpan(
                      text: 'EMI ',
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xff0f1110)),
                      children: const <TextSpan>[
                        TextSpan(text: 'from ₹6,298. No Cost EMI available.', style: TextStyle(fontWeight:FontWeight.w400)),
                        TextSpan(text: ' EMI options',style: TextStyle(color:Color(0xff008296), )),
                        TextSpan(text: " \nInclusive of all taxes",style:TextStyle(fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                ],
              ),

              //divider
              Divider(
                height: 20,
                thickness: 2,
                indent: 0,
                endIndent: 0,
                color: Color(0xffd5d9da),
              ),

              //further details
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // price
                    RichText(
                        text: TextSpan(
                            text: 'Total:',
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                            children: const <TextSpan>[
                              TextSpan(text: " ₹1,29,900",style: TextStyle(fontSize: 18))
                            ],
                        ),
                    ),

                    //delivery day
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: RichText(
                          text: TextSpan(
                            text: "FREE delivery ",
                            style: TextStyle(fontSize: 14, color:Color(0xff008296)),
                            children: [
                              TextSpan(text:"Tuesday, 14 November. ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: 'Details')
                            ],

                      )),
                    ),

                    // delivery location
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text("Delivering to Coimbatore 641014 - Update location",style: TextStyle(color: Color(0xff008296)),)
                      ],
                    ),

                    //stock details
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text("Only 2 left in stock.",style: TextStyle(color: Color(0xffb12703),fontSize: 16,fontWeight: FontWeight.bold)),
                    ),

                    //cart button
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        width:double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xfffed813),
                            ),
                            child: Text("Add to Cart",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff151610)),)
                        ),
                      ),
                    ),

                    //buy now button
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width:double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffffa41d),
                            ),
                            child: Text("Buy Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff151610)),)
                        ),
                      ),
                    ),

                    //secure
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.lock,color: Color(0xff999999),),
                          Text(" Secure transaction",style: TextStyle(color: Color(0xff008296)),)
                        ],
                      ),
                    ),


                    //seller
                    RichText(
                        text: TextSpan(
                          text: "Sold by ",
                          style: TextStyle(fontSize: 14, color:Colors.black),
                          children: [
                            TextSpan(text:"Appario Retail Private Ltd ",style: TextStyle(fontSize: 14,color: Color(0xff008296))),
                            TextSpan(text: 'and '),
                            TextSpan(text: 'Fulfilled by Amazon.',style: TextStyle(fontSize: 14,color: Color(0xff008296))),
                          ],

                        )),


                    //additional description
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text("Gift-wrap available."),
                    ),

                    //add to wish list
                    Text("Add to WishList",style: TextStyle(color: Color(0xff008296)),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
