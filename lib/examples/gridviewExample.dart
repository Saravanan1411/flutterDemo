import 'package:flutter/material.dart';


class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {

  final List<String> name = <String>[
    "Tony",
    "Elisa",
    "Mark",
    "Steve",
    "Antony"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemCount: name.length,
            itemBuilder: (context, index){
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lime,
                ),
                child: Center(child: Text ("${name[index]}")),
              );
            }
        ),
      ),
    );
  }
}
