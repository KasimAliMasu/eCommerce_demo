import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingProduct extends StatelessWidget {
  const TrendingProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xffFD6E87),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trending Products ',
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: const Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Last Date 29/02/22',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: const Color(0xffFFFFFF),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () {
                  // go to next page
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'View all ',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: const Color(0xffFFFFFF),
                          fontWeight: FontWeight.w600),
                    ),
                    const Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
