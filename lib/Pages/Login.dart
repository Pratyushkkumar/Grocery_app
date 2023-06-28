import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/Pages/Register.dart';
import 'package:grocery_app/Pages/forgotpass.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //textcontrollers
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _passwordcontroller.text.trim());
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 214, 248, 232),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/47048.jpg",
                      height: 210,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text("HELLO AGAIN",
                  style: GoogleFonts.oswald(
                      fontSize: 40, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Text(
                "We Missed You,Welcome Back!",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'robot',
                    fontSize: 15,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 40,
              ),
              //Email_Textfield
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: TextField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              //Password_Textfield
              Padding(
                padding: const EdgeInsets.only(right: 12.0, left: 12, top: 8),
                child: TextField(
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),

              SizedBox(height: 15),
              //SignIn_Button
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: Container(
                  height: 70,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.purple[300]),
                  child: TextButton(
                    onPressed: () {
                      SignIn();
                    },
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a memeber?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text("Register Now",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold)))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPassword(),
                            ));
                      }),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
