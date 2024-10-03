import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              hintText: 'Search any Product..',
              hintStyle: GoogleFonts.montserrat(
                color: const Color(0xffBBBBBB),
                fontSize: 14,
                decoration: TextDecoration.none,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Color(0xffBBBBBB),
              ),
              suffixIcon: const Icon(
                Icons.mic_none,
                color: Color(0xffBBBBBB),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
