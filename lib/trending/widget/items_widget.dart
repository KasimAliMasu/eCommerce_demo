import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '52,082+ Iteams ',
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[100]!),
              ),
              child: Row(
                children: [
                  Text(
                    'Sort',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 12,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    'icons/sort.svg',
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[100]!),
              ),
              child: Row(
                children: [
                  Text(
                    'Filter',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 12,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    'icons/filter.svg',
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
