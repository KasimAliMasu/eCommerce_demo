import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              height: 40,
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            child: Image.asset(
              'images/profilelogo.png',
              height: 40,
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Featured',
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
                      width: 66,
                      height: 30,
                      color: Colors.white,
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
                          const Icon(Icons.sort),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 66,
                      height: 30,
                      color: Colors.white,
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
                          const Icon(Icons.filter_alt_outlined),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 90,
              color: const Color(0xffFFFFFF),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategoryIcon('Beauty', 'images/beautylogocategory.png'),
                  const SizedBox(
                    width: 16,
                  ),
                  _buildCategoryIcon(
                      'Fashion', 'images/fashionlogocategory.png'),
                  const SizedBox(
                    width: 16,
                  ),
                  _buildCategoryIcon('Kids', 'images/kidslogocategory.png'),
                  const SizedBox(
                    width: 16,
                  ),
                  _buildCategoryIcon('Mens', 'images/menslogocategory.png'),
                  const SizedBox(
                    width: 16,
                  ),
                  _buildCategoryIcon('Womens', 'images/womenslogocategory.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryIcon(String label, String imageUrl) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
          radius: 30,
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
