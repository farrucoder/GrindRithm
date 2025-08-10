import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _goToNext();
  }


  Future<void> _goToNext() async {
    await Future.delayed(const Duration(seconds: 3)); // Simulate loading
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => HomeScreen())
    ); // or use GoRouter
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Image.asset('lib/Assets/logo.png'),
          ),

          Spacer(),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('from',style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),),
              Text('Saifee Studio',style: TextStyle(
                  color: Colors.yellow[300],
                  fontSize: 22
              ),)
            ],
          ),

          SizedBox(height: 30),

        ],
      ),
    );
  }
}
