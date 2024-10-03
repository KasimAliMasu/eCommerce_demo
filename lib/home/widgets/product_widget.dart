import 'package:ecommerce_app/model/item_index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.indexController,
  });

  final ImageItems indexController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.transparent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: indexController.items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 250,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    indexController.items[index].imagePath,
                    height: 150,
                    width: 190,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      indexController.items[index].productName,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff21003D),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      indexController.items[index].description,
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: const Color(0xff808488),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    ' ${indexController.items[index].price}',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Text(
                        ' ${indexController.items[index].oldPrice}',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: const Color(0xff808488),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        ' ${indexController.items[index].discount}',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        const Icon(Icons.star,
                            color: Color(0xffEDB310), size: 14),
                        const SizedBox(width: 5),
                        Text(
                          indexController.items[index].ratings,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: const Color(0xffEDB310),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          ' ${indexController.items[index].totalRatings}',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: const Color(0xff21003D),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
