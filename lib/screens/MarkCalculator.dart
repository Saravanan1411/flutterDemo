import 'package:flutter/material.dart';


class MarkCalculator extends StatefulWidget {
  const MarkCalculator({super.key});

  @override
  State<MarkCalculator> createState() => _MarkCalculatorState();
}

class _MarkCalculatorState extends State<MarkCalculator> {

  int sum = 0;
  double average = 0;

  
  TextEditingController sub1 = TextEditingController();
  TextEditingController sub2 = TextEditingController();
  TextEditingController sub3 = TextEditingController();
  TextEditingController sub4 = TextEditingController();
  TextEditingController sub5 = TextEditingController();


  List setOfMarks =[];

  void markCalculator(){
    setState(() {
      setOfMarks.add(int.parse(sub1.text) );
      sum = int.parse(sub1.text) + int.parse(sub2.text) + int.parse(sub3.text) + int.parse(sub4.text) + int.parse(sub5.text);
      average = sum / 5;
    });

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 600 ,
              width: double.infinity,
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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      controller: sub1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Subject 1 Marks",
                        labelText: "Subject 1"
                      ),
                    ),
                    TextFormField(
                      controller: sub2,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Subject 2 Marks",
                          labelText: "Subject 2"
                      ),
                    ),
                    TextFormField(
                      controller: sub3,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Subject 3 Marks",
                          labelText: "Subject 3"
                      ),
                    ),
                    TextFormField(
                      controller: sub4,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Subject 4 Marks",
                          labelText: "Subject 4"
                      ),
                    ),
                    TextFormField(
                      controller: sub5,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Subject 5 Marks",
                          labelText: "Subject 5"
                      ),
                    ),

                    ElevatedButton(onPressed: markCalculator, child: Text("CALCULATE"))

                  ],
                ),
              ),

            ),
            Container(

              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(2, 2),
                      blurRadius: 5.0,
                      spreadRadius: 1.0
                  ),
                ],
              ),
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Marks : $sum" ),
                    Text("Average Mark : $average %"),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
