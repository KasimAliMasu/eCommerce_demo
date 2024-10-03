import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummerSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 343,
        height: 300,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset('images/summerSale.png'),
            Row(
              children: [
                Text(
                  'New Arrivals ',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Summer’ 25 Collections',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF83758),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    minimumSize: const Size(92, 30),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'View all',
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: const Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600),
                      ),
                      const Icon(Icons.arrow_forward, color: Colors.white),
                    ],
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
