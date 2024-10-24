import 'package:ecommerce_app/Checkout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();
  final TextEditingController _accountHolderController =
      TextEditingController();
  final TextEditingController _ifscCodeController = TextEditingController();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }

    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? _validateNotEmpty(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName cannot be empty';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Center(
          child: Text(
            'Checkout',
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('images/profilelogo.png'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff4392F9),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.edit, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                sectionTitle('Personal Details'),
                Text(
                  'Email Address',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                buildTextField(
                  controller: _emailController,
                  label: 'Email Address',
                  validator: _validateEmail,
                ),
                Text(
                  'Password',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                buildTextField(
                  controller: _passwordController,
                  label: 'Password',
                  validator: (value) => _validateNotEmpty(value, 'Password'),
                  obscureText: true,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Change Password',
                        style: GoogleFonts.montserrat(color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                sectionTitle('Business Address Details'),
                Text(
                  'Pincode',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                buildTextField(
                  controller: _pincodeController,
                  label: 'Pincode',
                  validator: (value) => _validateNotEmpty(value, 'Pincode'),
                ),
                Text(
                  'Address',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                buildTextField(
                  controller: _addressController,
                  label: 'Address',
                  validator: (value) => _validateNotEmpty(value, 'Address'),
                ),
                Text(
                  'City',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                buildTextField(
                  controller: _cityController,
                  label: 'City',
                  validator: (value) => _validateNotEmpty(value, 'City'),
                ),
                Text(
                  'State',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                buildTextField(
                  controller: _stateController,
                  label: 'State',
                  validator: (value) => _validateNotEmpty(value, 'State'),
                ),
                Text(
                  'Country',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                buildTextField(
                  controller: _countryController,
                  label: 'Country',
                  validator: (value) => _validateNotEmpty(value, 'Country'),
                ),
                const SizedBox(height: 20),
                sectionTitle('Bank Account Details'),
                Text(
                  'Bank Account Number',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                buildTextField(
                  controller: _accountNumberController,
                  label: 'Bank Account Number',
                  validator: (value) =>
                      _validateNotEmpty(value, 'Bank Account Number'),
                ),
                Text(
                  'Account Holder’s Name',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                buildTextField(
                  controller: _accountHolderController,
                  label: 'Account Holder\'s Name',
                  validator: (value) =>
                      _validateNotEmpty(value, 'Account Holder\'s Name'),
                ),
                Text(
                  'IFSC Code',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                buildTextField(
                  controller: _ifscCodeController,
                  label: 'IFSC Code',
                  validator: (value) => _validateNotEmpty(value, 'IFSC Code'),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF83758),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      minimumSize: const Size(279, 55),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutScreen()),
                        );
                      }
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget buildTextField({
    required TextEditingController controller,
    required String label,
    String? Function(String?)? validator,
    bool obscureText = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelStyle: GoogleFonts.montserrat(fontSize: 18),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
