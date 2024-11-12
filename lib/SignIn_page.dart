import 'dart:developer';

import 'package:ecommerce_app/Forgotpassword_page.dart';
import 'package:ecommerce_app/GetStarted_page.dart';
import 'package:ecommerce_app/SignUp_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameEmailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameEmailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void login() async {
    String email = _usernameEmailController.text.trim();
    String password = _passwordController.text.trim();

    if (email == "" || password == "") {
      log("please fill all the fields");
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        if (userCredential.user != null) {}
      } on FirebaseAuthException catch (ex) {
        log(ex.code.toString());
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
                      'Welcome\nBack!',
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
                const SizedBox(height: 9),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen()),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: const Color(0xffF83758),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 59.0),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      login();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GetstartedPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF83758),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 68.0),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                          );
                        },
                        child: RichText(
                          text: const TextSpan(
                            text: 'Create An Account ',
                            style: TextStyle(
                              color: Color(0xff575757),
                              fontSize: 16.0,
                            ),
                            children: [
                              TextSpan(
                                text: 'Sign Up',
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
