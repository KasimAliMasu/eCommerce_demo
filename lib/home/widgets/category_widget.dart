import 'package:ecommerce_app/model/category_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.controller,
  });

  final CategoryImages controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.transparent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(controller.items[index].image),
                  radius: 30,
                ),
                const SizedBox(height: 8),
                Text(
                  controller.items[index].title,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: const Color(0xff21003D),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
