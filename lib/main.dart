import 'package:flutter/material.dart';
import 'package:grindrithm/Screens/HomeScreen.dart';

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
      title: 'Grind Rithm',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SplashScreen(),
    );
  }
}

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
