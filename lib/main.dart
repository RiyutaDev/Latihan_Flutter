import 'package:flutter/material.dart';

void main() {
  // runApp(
  //   MaterialApp(
  //     title: 'Flutter Latihan',
  //     debugShowMaterialGrid: false,
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       body:  Center(
  //         child: Text('Hello, World!', 
  //         style: TextStyle(
  //           color: Colors.pink,
  //           fontSize: 45, fontWeight: FontWeight.bold)),
  //       ),
  //     ),
  //     )
  //     );
      runApp(MyWidget());
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      title: 'Flutter Latihan',
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  Center(
          child: Text('Hello, World!', 
          style: TextStyle(
            color: Colors.pink,
            fontSize: 45, fontWeight: FontWeight.bold)),
        ),
      ),
      );
  runApp(Myhome());
  }
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Latihan',
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  Center(
          child: Text('Hello, World!', 
          style: TextStyle(
            color: Colors.pink,
            fontSize: 45, fontWeight: FontWeight.bold)),
        ),
      ),
      );
  }
}