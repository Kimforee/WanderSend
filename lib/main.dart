import 'package:WanderSend/screens/bottom_bar.dart';
import 'package:WanderSend/utils/app_styles.dart';
import 'package:WanderSend/screens/auth_screen.dart';
import 'package:WanderSend/authentication/phone_number.dart'; // Import your PhoneNumber screen
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;

  // Add a state to track whether the user selected login using email
  bool loginWithEmail = false;

  // Function to update login state
  void updateLoginState(bool loginWithEmail) {
    setState(() {
      this.loginWithEmail = loginWithEmail;
      isLoggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WanderSend',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
      // Use a ternary operator to determine which screen to show
      // If isLoggedIn is false, show PhoneNumberScreen, else show AuthScreen or BottomBar
      home: isLoggedIn
          ? (loginWithEmail ? const BottomBar() : AuthScreen())
          : PhoneNumberScreen(updateLoginState), // Pass the updateLoginState function to PhoneNumberScreen
    );
  }
}
