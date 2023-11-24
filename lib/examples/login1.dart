import 'package:flutter/material.dart';

import 'color.dart';


class Login1 extends StatelessWidget {
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: appbarColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage("assets/profileImage.jpeg"),
                  fit: BoxFit.fill
              ),
            ),

          ),
        ),
        title: const Text("GT Software College",),
        actions:const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          )],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
             Container(
               height: 500,
               decoration: BoxDecoration(
                 color: appbarColor,
                 borderRadius: BorderRadius.circular(15),
                 image: DecorationImage(
                     image: AssetImage("assets/background.jpeg"),
                     fit: BoxFit.fill
                 ),
               ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 20.0),
                       child: Text("Welcome to GT Software College",style: appBarHeading,),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top:50.0),
                       child: TextFormField(
                         decoration: const InputDecoration(
                           labelText:"Name *",
                           hintText: "Enter your Name",
                           prefixText: "+91",
                           prefixStyle: TextStyle(color:Colors.white,fontSize: 14),
                           border: OutlineInputBorder(),
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 30.0),
                       child: TextFormField(
                         decoration: const InputDecoration(
                             prefixIcon: Icon(Icons.lock,color: Colors.white,size: 30,),
                             labelText:"Password *",
                             hintText: "Enter your Password",
                             border: OutlineInputBorder(),
                             hintStyle: TextStyle(color:Colors.white,fontSize: 14)
                         ),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(top: 50.0),
                       child:ElevatedButton(
                         onPressed:(){},
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.indigo,
                         ),
                         child: Text("Login",style:buttonStyle,),),
                     ),
                   ],
                 ),
               )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

