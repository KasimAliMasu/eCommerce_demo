import 'package:ecommerce_app/checkout_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatelessWidget {
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on_outlined, color: Colors.black),
                  const SizedBox(width: 8),
                  Text(
                    'Delivery Address',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    height: 130,
                    width: 280,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit_calendar_outlined,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Text(
                          'Address:',
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          ' 216 St Paul\'s Rd, London N1 2LL, UK Contact: +44-7842xxxx',
                          style: GoogleFonts.montserrat(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.add_box_outlined,
                      size: 50,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Shopping List',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 16),
              ShoppingItemCard(
                imageUrl: 'images/Women’sCasualWear.png',
                itemName: 'Women\'s Casual Wear',
                variations: ['Black', 'Red'],
                rating: 4.8,
                price: 34.00,
                oldPrice: 64.00,
                discount: 33,
                quantity: 1,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckoutDetailScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              ShoppingItemCard(
                imageUrl: 'images/MensJacket.png',
                itemName: 'Men\'s Jacket',
                variations: ['Green', 'Grey'],
                rating: 4.7,
                price: 45.00,
                oldPrice: 67.00,
                discount: 28,
                quantity: 1,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckoutDetailScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShoppingItemCard extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final List<String> variations;
  final double rating;
  final double price;
  final double oldPrice;
  final int discount;
  final int quantity;
  final VoidCallback onTap;
  const ShoppingItemCard({
    required this.imageUrl,
    required this.itemName,
    required this.variations,
    required this.rating,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.quantity,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: onTap,
                child: Image.asset(imageUrl,
                    width: 100, height: 100, fit: BoxFit.cover),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemName,
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      'Variations: ${variations.join(', ')}',
                      style: GoogleFonts.montserrat(fontSize: 14),
                    ),
                    Row(
                      children: [
                        Text(
                          '$rating',
                          style: GoogleFonts.montserrat(fontSize: 14),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '★ ★ ★ ★ ☆',
                          style: TextStyle(color: Color(0xffF7B305)),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          '\$$price',
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          children: [
                            Text(
                              'upto $discount% off',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              '\$$oldPrice',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Order ($quantity) :  ',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                '   \$${price * quantity}',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
