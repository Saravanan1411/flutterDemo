import 'package:flutter/material.dart';
import 'dart:math';

class InputTask1 extends StatefulWidget {
  const InputTask1({super.key});

  @override
  State<InputTask1> createState() => _InputTask1State();
}

class _InputTask1State extends State<InputTask1> {

  TextEditingController dummy = TextEditingController();

  List display =[];

  void _ascending() {
    setState(() {
      display.sort();
    });
  }
  void _descending() {
    setState(() {
      display.sort((a, b) => b.compareTo(a));
    });
  }

  void _max (){
      display= display.reduce((value, element) => value > element? value:element);

  }
  void _min (){
    setState(() {
      display= [display.reduce((value, element) => value < element? value:element)];
    });
  }

  void _showDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.pinkAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(2.0, 2.0),
                      blurRadius: 5.0,
                      spreadRadius: 1.0
                    ),
                  ]
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller:  dummy,
                        decoration: InputDecoration(
                          border: OutlineInputBorder()
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(onPressed: ()  {
                                dummy.text ="1";
                              }, child: Text("1"),),
                            ),
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(onPressed: () {
                                setState(() {
                                  display.add({dummy.text});
                                });
                              }, child: Text("OK"),),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                )
            ),
            Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0
                    ),
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                child: ListView.builder(
                  itemCount: display.length,
                    itemBuilder: (BuildContext context , int index){
                      return Container(
                        decoration: BoxDecoration(

                        ),
                          child: Text("${display[index]}")
                      );
                    }
                ),
              ),
            ),
            SizedBox(
              width: 500,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed:_max ,child: Text('Max Value')),
                  ElevatedButton(onPressed: _min, child: Text('Min Value')),
                  ElevatedButton(onPressed: _ascending, child: Text('Sort (Ascending)')),
                  ElevatedButton(onPressed: _descending, child: Text('Sort (Descending)')),

                ],
              ),
            ),
          ],
        ),
      ),


    );
  }





}
