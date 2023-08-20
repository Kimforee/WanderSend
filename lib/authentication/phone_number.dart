import 'package:flutter/material.dart';
import 'package:WanderSend/utils/app_styles.dart';
import 'package:flutter/services.dart'; // Make sure to import your app styles

class PhoneNumberScreen extends StatelessWidget {
  final Function(bool) updateLoginState;
  PhoneNumberScreen(this.updateLoginState);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(230, 230, 250, 1).withOpacity(0.5),
                  Color.fromRGBO(135, 206, 250, 1).withOpacity(0.9),
                ],
                center: Alignment.center,
                stops: [0,1],
              )
            ),
          ),
         Center(
           child: Container(
             padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[

                 new TextField(
                   decoration: new InputDecoration(labelText: "Enter Phone Number"),
                   keyboardType: TextInputType.number,
                   inputFormatters: <TextInputFormatter>[
                     FilteringTextInputFormatter.digitsOnly
                   ],
                 ),
                 const SizedBox(height: 20,width: 120,),
                 ElevatedButton(
                   onPressed: () {
                     // Assuming the user selected login using email
                     // Set the login state to true for AuthScreen
                     updateLoginState(true);
                   },
                   child: Text('Skip to BottomBar'),
                   style: ElevatedButton.styleFrom(
                     primary: primary, // Use your app's primary color
                   ),
                 ),
                 SizedBox(height: 10),
                 ElevatedButton(
                   onPressed: () {
                     // Assuming the user selected other login methods
                     // Set the login state to false for AuthScreen
                     updateLoginState(false);
                   },
                   child: Text('Login with Email'),
                   style: ElevatedButton.styleFrom(
                     primary: primary, // Use your app's primary color
                   ),
                 ),

               ],
             ),
           ),
         )
        ],
      )

    );
  }
}
