import 'package:flutter/material.dart';
import 'package:grindrithm/Screens/AuthScreens/SignUpOnBoardScreens/SignUpScreen.dart';
import 'package:grindrithm/Screens/HomeScreen.dart';


class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Image.asset('lib/Assets/Logo.png',height: 280,),
            ),

            Center(
              child: Text('Grindrithm',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
            ),

            SizedBox(height: 25),
            Text('Enter a your mail:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
            SizedBox(height: 10),
            _inputField(),

            SizedBox(height: 15),

            Text('Enter a your password:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),
            SizedBox(height: 10),
            _inputField(),

            SizedBox(height: 15),

            _actionBtn("Log in",(){

              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));

            }),

            SizedBox(height: 20),

            _actionBtn("Create a account",(){

              Navigator.push(context, MaterialPageRoute(builder: (context) => Signupscreen()));

            }),




          ],
        ),
      ),
    );
  }

  Widget _inputField(){
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }

  Widget _actionBtn(String title, Function onTap){
    //VoidCallback onTap
    return   ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
        ),
        onPressed: () => onTap(), //onTap
        child: Text(title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87
          ),)
    );
  }

}
