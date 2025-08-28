import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text('Home Screen',
          style: TextStyle(
              color: Colors.yellow[300]
          ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Center(
            child: Text('Welcome to Grindrithm, !!!',
            style: TextStyle(
              fontSize: 23,
              color: Colors.yellow[300]
            ),),
          )




        ],
      ),
    );
  }
}
