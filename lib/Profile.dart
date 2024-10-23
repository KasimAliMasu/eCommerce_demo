import 'package:ecommerce_app/Checkout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
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
              buildTextField('', ''),
              Text(
                'Password',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              buildTextField('', ''),
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
              buildTextField('', ''),
              Text(
                'Address',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              buildTextField('', ''),
              Text(
                'City',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              buildTextField('', ''),
              Text(
                'State',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              buildTextField('', ''),
              Text(
                'Country',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              buildTextField('', ''),
              const SizedBox(height: 20),
              sectionTitle('Bank Account Details'),
              Text(
                'Bank Account Number',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              buildTextField('', ''),
              Text(
                'Account Holder’s Name',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              buildTextField('', ''),
              Text(
                'IFSC Code',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              buildTextField('', ''),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckoutScreen()),
                    );
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

  Widget buildTextField(String label, String initialValue) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        initialValue: initialValue,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: GoogleFonts.montserrat(fontSize: 18),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
