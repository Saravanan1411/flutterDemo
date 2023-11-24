import 'package:flutter/material.dart';


import 'color.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wallpaper.jpeg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage("assets/profileImage.jpeg"),
                    fit: BoxFit.fill,),
                  )
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: grey,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:20.0),
                            child: Text("Profile Details",style: appBarHeading,),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                            child: Row(
                              children: [
                                Image.asset("assets/profileImage.jpeg",height: 100,width: 100,),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("Android Studio is the official integrated development environment for Google's Android operating system, built on JetBrains' IntelliJ IDEA software and designed specifically for Android development. It is available for download on Windows, macOS and Linux based operating systems",),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 30.0),
                    child: Container(
                      child: Column(
                        children: [
                          TextFormField(
                            style:TextStyle(color: white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Password",
                              hintText: "Enter your password",
                              hintStyle: TextStyle(color: white),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:20.0),
                            child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: Text("Login",style: buttonStyle,)),
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
