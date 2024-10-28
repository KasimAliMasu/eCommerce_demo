import 'package:ecommerce_app/home/shopping_page.dart';
import 'package:ecommerce_app/order_success_screen.dart';
import 'package:ecommerce_app/trending/widget/trending_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = '';

  void selectPaymentMethod(String method) {
    setState(() {
      selectedPaymentMethod = method;
    });
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xffA8A8A9),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    '₹ 7,000',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xffA8A8A9),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xffA8A8A9),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    '₹ 30',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xffA8A8A9),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xff4C5059),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    '₹ 7,030',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xff4C5059),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Payment',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xff222222),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              buildPaymentOption('Visa', 'images/visa.png'),
              const SizedBox(height: 10),
              buildPaymentOption('PayPal', 'images/paypal.png'),
              const SizedBox(height: 10),
              buildPaymentOption('Maestro', 'images/maestro.png'),
              const SizedBox(height: 10),
              buildPaymentOption('Apple Pay', 'images/appleicon.png'),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF83758),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: const Size(300, 50),
                ),
                onPressed: selectedPaymentMethod.isNotEmpty
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderSuccessScreen()),
                        );
                      }
                    : null,
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xffEB3030),
        elevation: 5,
        onPressed: () {},
        child: SvgPicture.asset(
          'icons/shopping-cart 2.svg',
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildPaymentOption(String paymentMethod, String assetPath) {
    return GestureDetector(
      onTap: () => selectPaymentMethod(paymentMethod),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: selectedPaymentMethod == paymentMethod
              ? const Color(0xffF4F4F4)
              : const Color(0xffF4F4F4),
          border: selectedPaymentMethod == paymentMethod
              ? Border.all(
                  color: Colors.redAccent, width: 2) // Border for selected item
              : Border.all(color: Colors.transparent),
          borderRadius:
              BorderRadius.circular(8), // Optional: to round the corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                assetPath,
                height: 50,
                width: 80,
              ),
              Text(
                ' *********2109',
                style: GoogleFonts.montserrat(
                  color: const Color(0xff6E7179),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: 76,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    'icons/home 1.svg',
                  ),
                ),
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TrendingItems(
                          controllers: [],
                        ),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    'icons/heart 1.svg',
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Wishlist",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'icons/search 1.svg',
                ),
                const Text(
                  "Search",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'icons/settings.svg',
                ),
                const Text(
                  "Setting",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
