import 'package:early_bird/login_page.dart';
import 'package:early_bird/signup_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.1),
            Image.asset(
              "assets/images/early_bird.png",
              height: height * 0.25,
              width: width * 0.25,
            ),
            SizedBox(height: height * 0.015),
            Text(
              "early Bird",
              style: TextStyle(
                fontSize: 62,
                fontWeight: FontWeight.bold,
                fontFamily: 'DM Sans',
                color: Color.fromRGBO(41, 182, 246, 1),
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              "Your local discount mate",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'DM Sans',
                color: Color.fromRGBO(46, 58, 89, 1),
              ),
            ),

            SizedBox(height: height * 0.1),
            SizedBox(
              height: height * 0.06,
              width: width * 0.7,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  foregroundColor: Colors.white, // Text and icon color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DM Sans',
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: height * 0.03),
            SizedBox(
              height: height * 0.06,
              width: width * 0.7,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DM Sans',
                        color: Color.fromRGBO(3, 169, 244, 1),
                      ),
                    ),
                    SizedBox(width: width * 0.01),
                    Icon(
                      Icons.arrow_forward,
                      color: Color.fromRGBO(3, 169, 244, 1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
