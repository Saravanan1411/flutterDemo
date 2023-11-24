import 'package:flutter/material.dart';


import '../dataModels/SongDataModel.dart';
import 'SpotifyDetailsSong.dart';

class SpotifyPlaylist extends StatefulWidget {
  const SpotifyPlaylist({super.key});

  @override
  State<SpotifyPlaylist> createState() => _SpotifyPlaylistState();
}

class _SpotifyPlaylistState extends State<SpotifyPlaylist> {

  int _index = 0 ;

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }

  static List<String> SongImage =[
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
    "song.jpg",
  ];

  static List<String> SongTitle =[
    "Oh Oh",
    "Un Paarvai",
    "Yaaro - Duet Version",
    "Jalsa",
    "Jalsa (Remix)",
    "Natpukulle",
    "Saroja Saman Nikolo",
    "Ulle Vaa",
    "Yaaro (Friendship)",
    "Oh Oh",
    "Un Paarvai",
    "Yaaro - Duet Version",
    "Jalsa",
    "Jalsa (Remix)",
    "Natpukulle",
    "Saroja Saman Nikolo",
    "Ulle Vaa",
    "Yaaro (Friendship)",
  ];

  static List<String> Singers =[
    "Anoushika",
    "Vijay Yesudas",
    "S. P. Balasubramanyam, K. S. Chithra",
    "Ranjith Govind, Tippu, Hariharan, Karthik, Premgi Amaren",
    "Sabesh, Gana Ulaganathan, Gana Pazhan",
    "Yuvan Shankar Raja",
    "Shankar Mahadevan, Premgi Amaren",
    "Yuvan Shankar Raja,D.J.Sathiya, Silve Star",
    "S. P. Charan, Venkat Prabu",
    "Anoushika",
    "Vijay Yesudas",
    "S. P. Balasubramanyam, K. S. Chithra",
    "Ranjith Govind, Tippu, Hariharan, Karthik, Premgi Amaren",
    "Sabesh, Gana Ulaganathan, Gana Pazhan",
    "Yuvan Shankar Raja",
    "Shankar Mahadevan, Premgi Amaren",
    "Yuvan Shankar Raja,D.J.Sathiya, Silve Star",
    "S. P. Charan, Venkat Prabu",
  ];
  


 final List<SongDataModel> SongData = List.generate(
     SongTitle.length,
         (index)
     => SongDataModel('${SongTitle[index]}','${Singers[index]}')
 );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return[
              SliverAppBar(
                leading: Icon(Icons.arrow_back_ios),
                pinned: true,
                expandedHeight: 500,
                // collapsedHeight: 200,
                stretch: true,
                titleSpacing: 200,
                backgroundColor: Colors.transparent,
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff826350),Color(0xff151313)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Yuvan"),
                      ],
                    ),
                  background: Stack(
                    children: [
                    Column(
                      children: [
                        SizedBox(height: 50),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                                height:50,
                                width:320,
                                child:TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                      fillColor: Colors.white.withOpacity(0.2),
                                      prefixIcon: Icon(Icons.search,color: Color(0xfffefffe),),
                                      hintStyle: TextStyle(color: Color(0xfffefffe)),
                                      hintText: "Find on this page",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          borderSide: BorderSide(color: Colors.white.withOpacity(0.2),width: 0.1)
                                      )
                                  ),
                                )
                            ),
                            Container(
                              height: 50,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Center(child: Text("Sort",style: TextStyle(color: Color(0xfffefffe)),)),
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:50.0),
                          child: Container(
                            height: 250,
                            width:250,

                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/spotifyCoverImage.jpeg"),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0
                                  )
                                ]
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),


                      ],
                    ),
                  ],
                ),
                stretchModes: [
                  StretchMode.fadeTitle,
                  StretchMode.blurBackground
                ],
              ),
            ),
          ),
            ];
            },
            body:SingleChildScrollView(
              child: Container(
                color: Color(0xff121212),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height:20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage("assets/profileImage.jpeg"),
                                    )
                                ),
                              ),
                              Text("Stark",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.adjust_rounded,size: 20,color: Colors.white,),
                              Text("24h 48m",style: TextStyle(color: Colors.grey,fontSize: 12),)
                            ],
                          ),

                          //action buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [


                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.arrow_circle_down,size: 30,color: Colors.grey,),
                                  Icon(Icons.people,size: 30,color: Colors.grey,),
                                  Icon(Icons.more_horiz_rounded,size: 30,color: Colors.grey),
                                ],
                              ),

                              Row(
                                children: [
                                  Icon(Icons.shuffle_rounded,size:40,color: Color(0xff1ed760)),
                                  Icon(Icons.play_circle,size:40,color: Color(0xff1ed760),)
                                ],
                              )

                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                        height: MediaQuery.of(context).size.height*.99,
                      child: ListView.builder(
                        itemCount:SongData.length,
                          itemBuilder: ( context ,int index ){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SongDetails( songDataModel: SongData[index],)));
                                },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            // Container(
                                            //   height: 50,
                                            //   width: 50,
                                            //   decoration: BoxDecoration(
                                            //       color: Color(0xff242424),
                                            //       image: DecorationImage(image: AssetImage(SongData[index].SongImage))
                                            //   ),
                                            // ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(SongData[index].SongTitle,style: TextStyle(fontSize: 14,color: Color(0xffffffff)),),
                                                  Text(SongData[index].Singers,style: TextStyle(fontSize: 10,color: Color(0xff828282)),),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    Icon(Icons.more_horiz_rounded,color: Color(0xff858384),)
                                  ]
                              ),
                            ),
                          );
                          }
                          ),
                    ),
                  ],
                ),
              ),
            )
      ),


      //bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: _index ==0 ? Colors.white: Colors.grey),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.folder),label: 'Your Library'),
          ],
        currentIndex: _index,
        onTap: tap,
      ),

    );
  }
}







