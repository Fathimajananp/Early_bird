import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(onTap: (){
            Navigator.of(context).pop();
          },
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
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                color: Color.fromRGBO(41, 182, 246, 1),
                fontSize: 36,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * 0.09),
            Container(
              height: height * 0.06,
              width: width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
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
              height: height * 0.06,
              width: width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
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
                  hintText: "Username",
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
              height: height * 0.06,
              width: width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
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

            SizedBox(height: height * 0.03),
            Container(
              height: height * 0.06,
              width: width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
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
                  hintText: "Confirm Password",
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
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DM Sans',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: width * 0.01),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.1),
            Column(
              children: [
                Text(
                  "You are completely safe.",
                  style: TextStyle(
                    color: Color.fromRGBO(44, 41, 41, 1),
                    fontSize: 15,
                    fontFamily: 'DM Sans',

                    
                  ),
                ),
                Text("Read our Terms & Conditions.",style: TextStyle(
                  color: Color.fromRGBO(41, 182, 246, 1),
                  fontSize: 15,
                  fontFamily: 'DM Sans',

                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
