import 'package:flutter/material.dart';
import 'package:flutterdemo/examples/bottomnavigationexample.dart';

import 'color.dart';

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        leading: Icon(Icons.menu),
        title: Text("Report Page"),
        actions: [
          Icon(Icons.minimize),
          Icon(Icons.close),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wallpaper.jpeg"),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          children: [

            //attendence tile
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(5)
                ) ,
                child:  ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Attendence report"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ),

            //interview tile
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(5)
                ) ,
                child:  ListTile(
                  leading: Icon(Icons.question_mark_rounded),
                  title: Text("Interview question"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ),

            //payment tile
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(5)
                ) ,
                child:  ListTile(
                  leading: Icon(Icons.currency_bitcoin),
                  title: Text("Payment report"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ),

            //leave request tile
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(5)
                ) ,
                child:  ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Leave request"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ),

            // feedback tile
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(5)
                ) ,
                child:  ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text("Feedback"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
              child: Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavigationExample()),);},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text("OK",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.white),)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Container(
                child: Text("Sign In",style: TextStyle(fontSize: 16,color: Colors.lime,decoration: TextDecoration.underline,decorationColor: Colors.lime),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
