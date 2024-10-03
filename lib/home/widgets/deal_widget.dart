import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DealWidget extends StatelessWidget {
  const DealWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xff4392F9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deal of the Day',
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: const Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.timer_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '22h 55m 20s remaining',
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
                onPressed: () {},
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
