import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OffProductWidget extends StatelessWidget {
  const OffProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            'images/offProduct.png',
            width: 343,
            height: 189,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 33,
              ),
              Text(
                ' 50-40% OFF',
                style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Now in (product)\n All colors',
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
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
                        'Shop Now ',
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: const Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600),
                      ),
                      const Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
