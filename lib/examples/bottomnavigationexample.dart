import 'package:flutter/material.dart';

import 'carousel.dart';
import 'listtileexample.dart';
import 'login.dart';
import 'example.dart';

// class BottomNavigationExample extends StatefulWidget {
//   const BottomNavigationExample({super.key});
//
//   @override
//   State<BottomNavigationExample> createState() => _BottomNavigationExampleState();
// }
//
// class _BottomNavigationExampleState extends State<BottomNavigationExample> {
//
//   //page declaration
//   PageController pageController = PageController();
//   List<Widget>pages=[Login(),Example(),ListTileExample()];
//
//   //initial page index
//   int selectedIndex = 0;
//
//   //page change function
//   void onPageChanged(int index){
//     setState(() {
//       selectedIndex=index;
//     });
//   }
//
//   //tap function for icon
//   void onItemTap ( int selectedItems){
//     pageController.jumpToPage(selectedItems);
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       //page view inside the body
//       body: PageView(
//         controller: pageController,
//         children: pages,
//         onPageChanged: onPageChanged,
//       ),
//
//       //bottom navigation
//       bottomNavigationBar: BottomNavigationBar(
//
//         backgroundColor: Colors.cyan,
//         onTap: onItemTap,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.door_back_door_outlined,color: selectedIndex==0?Colors.grey:Colors.black),
//             label: 'Login',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.key,color: selectedIndex==1?Colors.grey:Colors.black),
//             label: 'Images',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat,color: selectedIndex==2?Colors.grey:Colors.black),
//             label: 'Chats',
//           ),
//
//
//
//         ],
//       ),
//
//     );
//   }
// }


class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({super.key});

  @override
  State<BottomNavigationExample> createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {


  int _index = 0 ;

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }

  final pages = [
    Center(child: Text("data")),
    CarouselExample()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
     bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
         BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home')
       ],
       currentIndex: _index,
       onTap: tap,
     ),
    );
  }
}

