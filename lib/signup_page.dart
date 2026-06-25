import 'package:early_bird/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController userController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmpwController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _SignupPageState extends State<SignupPage> {
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
        child: Form(
          key: _formKey,
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
                  controller: emailController,
                  obscureText: false,
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
                      return "Please enter your email address";
                    }
                    final emailRegExp = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    );
                    if (!emailRegExp.hasMatch(value)) {
                      return "please enter a valid email";
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
                  controller: userController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a username";
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
                      return "Password must be contain 6 characters";
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
                  controller: confirmpwController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a password one more time";
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: height * 0.08),
              SizedBox(
                height: height * 0.08,
                width: width * 0.7,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Background color
                    foregroundColor: Colors.white, // Text and icon color
                  ),
                  onPressed: () {
                    print(emailController.text);
                    print(userController.text);
                    print(passwordController.text);
                    print(confirmpwController.text);
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Login Successful..")),
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                      emailController.clear();
                      userController.clear();
                      passwordController.clear();
                      confirmpwController.clear();
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Sign up failed. Please enter your details",
                          ),
                        ),
                      );
                    }

                },

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
                  Text(
                    "Read our Terms & Conditions.",
                    style: TextStyle(
                      color: Color.fromRGBO(41, 182, 246, 1),
                      fontSize: 15,
                      fontFamily: 'DM Sans',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
