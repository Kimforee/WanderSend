import 'dart:math';
import 'package:WanderSend/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
enum AuthMode { Signup, Login}

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
       body: Stack(
         children: <Widget>[
           Container(
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [
                 Color.fromRGBO(230, 230, 250, 1).withOpacity(0.5),
                 Color.fromRGBO(135, 206, 250, 1).withOpacity(0.9),
                 ],
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 stops: [0,1],
               ),
             ),
           ),
           Center(
             child: SingleChildScrollView(
               child: Container(

                 // width: deviceSize.width * 0.8,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     // Your MyShop container ...

                     const SizedBox(height: 20,width: 120,),

                     // Login button
                     ElevatedButton(
                       onPressed: () {
                         // Navigate to the home page (BottomBar)
                         Navigator.of(context).pushReplacement(MaterialPageRoute(
                           builder: (context) => BottomBar(),
                         ));
                       },
                       style: ElevatedButton.styleFrom(
                         fixedSize: Size(140, 40), // Set the desired width and height
                       ),
                       child: Text('Login'),
                     ),

                     SizedBox(height: 20),

                     // Sign Up button
                     ElevatedButton(
                       onPressed: () {
                         // Navigate to the home page (BottomBar)
                         Navigator.of(context).pushReplacement(MaterialPageRoute(
                           builder: (context) => BottomBar(),
                         ));
                       },
                       style: ElevatedButton.styleFrom(
                         fixedSize: Size(140, 40), // Set the desired width and height
                       ),
                       child: Text('Sign Up'),
                     ),
                     SizedBox(height: 20),

                     // Login using phone number
                     ElevatedButton(
                       onPressed: () {
                         // Navigate to the home page (BottomBar)
                         Navigator.of(context).pushReplacement(MaterialPageRoute(
                           builder: (context) => BottomBar(),
                         ));
                       },
                       style: ElevatedButton.styleFrom(
                         fixedSize: Size(240, 40), // Set the desired width and height
                       ),
                       child: Text('Login using phone number'),
                     ),
                   ],
                 ),
               ),
             ),
           ),
         ],
       ),
    );
  }
}