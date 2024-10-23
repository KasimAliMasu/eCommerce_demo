import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FunctionWidget extends StatelessWidget {
  const FunctionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Color(0xff828282),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'icons/location.svg',
                  color: const Color(0xff828282),
                  height: 21,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Nearest Store',
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: const Color(0xff828282),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Color(0xff828282),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'icons/VIP.svg',
                  color: const Color(0xff828282),
                  height: 21,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'VIP',
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: const Color(0xff828282),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Color(0xff828282),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'icons/ReturnPolicy.svg',
                  color: const Color(0xff828282),
                  height: 21,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Return policy',
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: const Color(0xff828282),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
