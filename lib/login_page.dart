import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: height * 0.01,
            width: width * 0.01,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromRGBO(41, 182, 246, 1),
            ),
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Login",
              style: TextStyle(
                color: Color.fromRGBO(41, 182, 246, 1),
                fontSize: 36,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * 0.01),
            Image.asset(
              "assets/images/early_bird.png",
              height: height * 0.15,
              width: width * 0.15,
            ),
            SizedBox(height: height * 0.03),

            Container(
              height: height * 0.08,
              width: width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05), // Soft shadow color
                    blurRadius: 8, // Haziness at the edge of the shadow
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Email address",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.03),

            Container(
              height: height * 0.08,
              width: width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05), // Soft shadow color
                    blurRadius: 8, // Haziness at the edge of the shadow
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.09),
            SizedBox(
              height: height * 0.08,
              width: width * 0.7,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  foregroundColor: Colors.white, // Text and icon color
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DM Sans',
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.1),
            Text(
              "Forgot Password",
              style: TextStyle(
                color: Color.fromRGBO(66, 66, 66, 1),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
