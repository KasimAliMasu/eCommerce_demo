import 'dart:math';

import 'package:ecommerce_app/GetStarted_page.dart';
import 'package:ecommerce_app/SignIn_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameEmailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameEmailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void createAccount() async {
    String email = _usernameEmailController.text.trim();
    String password = _passwordController.text.trim();
    String cpassword = _confirmPasswordController.text.trim();
    if (email == "" || password == "" || cpassword == "") {
      log("Please fill all the detailes!" as num);
    } else if (password != cpassword) {
      log("Password do not match" as num);
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        if (userCredential.user != null) {
          navigator?.pop(context);
        }
      } on FirebaseAuthException catch (ex) {
        log(ex.code.toString() as num);
      }
    }
  }

  // String? _validateUsernameOrEmail(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter your username or email';
  //   }
  //   final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  //   if (!emailRegex.hasMatch(value) &&
  //       !value.contains(RegExp(r'^[a-zA-Z0-9_]+$'))) {
  //     return 'Please enter a valid username or email';
  //   }
  //   return null;
  // }

  // String? _validatePassword(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter your password';
  //   }
  //   if (value.length < 6) {
  //     return 'Password must be at least 6 characters long';
  //   }
  //   return null;
  // }

  // String? _validateConfirmPassword(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please confirm your password';
  //   }
  //   if (value != _passwordController.text) {
  //     return 'Passwords do not match';
  //   }
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 90.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create an\naccount',
                      style: GoogleFonts.montserrat(
                        fontSize: 36,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36.0),
                TextFormField(
                  controller: _usernameEmailController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xff626262),
                    ),
                    hintText: 'Username or Email',
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: const Color(0xff676767),
                      fontWeight: FontWeight.w500,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  // validator: _validateUsernameOrEmail,
                ),
                const SizedBox(height: 31.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xff626262),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility_outlined,
                      color: Color(0xff626262),
                    ),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: const Color(0xff676767),
                      fontWeight: FontWeight.w500,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  // validator: _validatePassword,
                ),
                const SizedBox(height: 31.0),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xff626262),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility_outlined,
                      color: Color(0xff626262),
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: const Color(0xff676767),
                      fontWeight: FontWeight.w500,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  // validator: _validateConfirmPassword,
                ),
                const SizedBox(height: 19),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: RichText(
                      text: const TextSpan(
                        text: 'By clicking the',
                        style: TextStyle(
                          color: Color(0xff575757),
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: ' Register ',
                            style: TextStyle(
                              color: Color(0xffF83758),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: 'button, you agree\n to the public offer',
                            style: TextStyle(
                              color: Color(0xff575757),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 38.0),
                SizedBox(
                  width: 317,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      createAccount();
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GetstartedPage()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF83758),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '- OR Continue with -',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xff575757),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                                color: const Color(0xffFCF3F6),
                                borderRadius: BorderRadius.circular(60.0),
                                border:
                                    Border.all(color: const Color(0xffF83758))),
                            child: Center(
                              child: Image.asset(
                                'images/googlelogo.png',
                                height: 30.0,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                                color: const Color(0xffFCF3F6),
                                borderRadius: BorderRadius.circular(60.0),
                                border:
                                    Border.all(color: const Color(0xffF83758))),
                            child: Center(
                              child: Image.asset('images/applelogo.png',
                                  height: 30.0),
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                                color: const Color(0xffFCF3F6),
                                borderRadius: BorderRadius.circular(60.0),
                                border:
                                    Border.all(color: const Color(0xffF83758))),
                            child: Center(
                              child: Image.asset(
                                'images/facebooklogo.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 28.0),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()),
                          );
                        },
                        child: RichText(
                          text: const TextSpan(
                            text: 'I Already Have an Account ',
                            style: TextStyle(
                              color: Color(0xff575757),
                              fontSize: 16.0,
                            ),
                            children: [
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  color: Color(0xffF83758),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
