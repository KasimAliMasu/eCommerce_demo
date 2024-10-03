import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialOffersWidget extends StatelessWidget {
  const SpecialOffersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 84,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/specialOffers.png'),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  'Special Offers 😱',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'We make sure you get the\n offer you need at best prices',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
