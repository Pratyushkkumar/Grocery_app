import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:grocery_app/Pages/Login.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _cpasswordcontroller = TextEditingController();
  SignUp(BuildContext context) async {
    if (_passwordcontroller.text == _cpasswordcontroller.text) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailcontroller.text.trim(),
            password: _passwordcontroller.text.trim());
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Account Created Succesfully"),
              );
            });
      } on FirebaseAuthException catch (error) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(error.message.toString()),
              );
            });
      }
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Passwords Do Not Match"),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 214, 248, 232),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                      fit:BoxFit.cover
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("HELLO THERE",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'robot')),
              SizedBox(
                height: 10,
              ),
              Text(
                "We Are Glad To Have You, Welcome!",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'robot',
                    fontSize: 15,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              //Email TextField
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: TextField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(fillColor: Colors.white70,filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              //Password_Textfield
              Padding(
                  padding: const EdgeInsets.only(right: 12, left: 12),
                  child: TextField(
                      controller: _passwordcontroller,
                      decoration: InputDecoration(fillColor: Colors.white70,filled: true,
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                              borderRadius: BorderRadius.circular(10))))),

              SizedBox(
                height: 13,
              ),
              //CPassword_Textfield
              Padding(
                  padding: const EdgeInsets.only(right: 12, left: 12),
                  child: TextField(
                    controller: _cpasswordcontroller,
                    decoration: InputDecoration(fillColor: Colors.white70,filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Confirm Password",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(10))),
                  )),
              SizedBox(height: 20),
              //SignIn_Button
              Container(
                height: 66,
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.purple[300]),
                child: TextButton(
                  onPressed: () {
                    SignUp(context);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already memeber?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text("Login",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold)))
                ],
              )
            ],
          ),
        ));
  }
}
