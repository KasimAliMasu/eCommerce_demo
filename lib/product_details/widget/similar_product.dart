import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimilarProductGrid extends StatelessWidget {
  const SimilarProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SimilarImage> products = SimilarItems().similarProductList();

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return SimilarProduct(controlle: products, index: index);
      },
    );
  }
}

class SimilarProduct extends StatelessWidget {
  final List<SimilarImage> controlle;
  final int index;
  const SimilarProduct({
    super.key,
    required this.controlle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              controlle[index].imagePath,
              height: 130,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              controlle[index].productName,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              controlle[index].description,
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              controlle[index].price,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              children: [
                Text(
                  controlle[index].ratings,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffEDB310),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  controlle[index].totalRatings,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffA4A9B3),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SimilarImage {
  final String imagePath;
  final String productName;
  final String description;
  final String price;
  final String ratings;
  final String totalRatings;

  SimilarImage({
    required this.imagePath,
    required this.productName,
    required this.description,
    required this.price,
    required this.ratings,
    required this.totalRatings,
  });
}

class SimilarItems {
  List<SimilarImage> similarProductList() {
    return [
      SimilarImage(
        imagePath: 'images/nike3.png',
        productName: 'NIke Sneakers',
        description: 'Nike Air Jordan Retro 1 Low Mystic Black',
        price: '₹1,900',
        ratings: '★ ★ ★ ★ ☆',
        totalRatings: '46,890',
      ),
      SimilarImage(
        imagePath: 'images/nike2.png',
        productName: 'NIke Sneakers',
        description: 'Mid Peach Mocha Shoes For Man White Black Pink S...',
        price: '₹1,900',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '2,56,890',
      ),
      SimilarImage(
        imagePath: 'images/nike1.png',
        productName: 'NIke Sneakers',
        description: 'Nike Air Jordan 1 Low Shoes For Man Basketball Sh...',
        price: '₹1,900',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '1,56,890',
      ),
      SimilarImage(
        imagePath: 'images/nike4.png',
        productName: 'NIke Sneakers',
        description: 'Jordan 1 Hyper Royal Heavy Quality',
        price: '₹1,500',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '96,890',
      ),
    ];
  }
}
