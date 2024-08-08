import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 181, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 139, 139),
        centerTitle: true,
        title: Text(
          "login screen",
          style: TextStyle(
              fontSize: 26, color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'images/pop.png',
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        "Your name",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.person_outlined,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Your password",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                      child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 139, 139, 139)),
                          child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "login",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                  ),
                                )
                              ])))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
