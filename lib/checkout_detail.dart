import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutDetailScreen extends StatelessWidget {
  const CheckoutDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Shopping Bag',
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
              ),
            )
          ],
        ),
        actions: [
          SvgPicture.asset('icons/heart 1.svg'),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(
                  children: [
                    Image.asset(
                      'images/Women’sCasualWear.png',
                      height: 200,
                      width: 150,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Women’s Casual Wear',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          'Checked Single-Breasted\nBlazer',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 80,
                              color: const Color(0xffF2F2F2),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Size 42 ',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    SvgPicture.asset('icons/arrow_down.svg')
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 80,
                              color: const Color(0xffF2F2F2),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Qty 1 ',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    SvgPicture.asset('icons/arrow_down.svg')
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Delivery by ',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Text(
                              '10 May 2XXX ',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SvgPicture.asset('icons/coupon.svg'),
                const SizedBox(width: 10),
                Text(
                  'Apply Coupons',
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
