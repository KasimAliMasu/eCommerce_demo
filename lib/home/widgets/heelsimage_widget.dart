import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeelsImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 500,
        child: Stack(
          children: [
            Image.asset(
              'images/heels.png',
              width: 500,
            ),
            Positioned(
              right: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 33,
                  ),
                  Text(
                    'Flat and Heels',
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stand a chance to get rewarded',
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
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
                          'Visit now',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
