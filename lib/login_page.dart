import 'package:early_bird/home_page.dart';
import 'package:early_bird/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final TextEditingController userController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
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
        child: Form(
          key: _formKey,
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
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                        0.05,
                      ), // Soft shadow color
                      blurRadius: 8, // Haziness at the edge of the shadow
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: userController,
                  // keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email address",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    if (!value.contains('@')) {
                      return "Wrong email";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: height * 0.03),

              Container(
                height: height * 0.08,
                width: width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                        0.05,
                      ), // Soft shadow color
                      blurRadius: 8, // Haziness at the edge of the shadow
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a password";
                    }
                    if (value.length < 6) {
                      return "Password must be contains 6 characters";
                    }
                    return null;
                  },
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
                  onPressed: () {
                    print(userController.text);
                    print(passwordController.text);
                    if (_formKey.currentState!.validate()) {
                      String user = userController.text;
                      String password = passwordController.text;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Login successful with user: $user & password: $password..",
                          ),
                        ),
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      userController.clear();
                      passwordController.clear();
                      // Navigator.pushReplacementNamed(context, '/HomePage');
                    } else {
                      // print("Login Failed");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Login failed. Please enter your email and password",
                          ),
                        ),
                      );
                    }

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
      ),
    );
  }
}
