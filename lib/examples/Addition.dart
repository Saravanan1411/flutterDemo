import 'package:flutter/material.dart';

class Addition extends StatefulWidget {
  const Addition({super.key});

  @override
  State<Addition> createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  int m1 = 89;
  int m2 = 67;
  int sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          ElevatedButton(
            onPressed: (){
              setState(() {
                sum = m1 + m2;
              });

             print(sum);

            }, child: Text("Press"),
          ),
          Text(sum.toString())
        ],
      )
    );
  }
}
