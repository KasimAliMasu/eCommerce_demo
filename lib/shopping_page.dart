import 'package:ecommerce_app/model/category_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model/item_index.dart';

class HomePage extends StatelessWidget {
  final controller = CategoryImages();
  final indexController = ImageItems();
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
      body: SingleChildScrollView(
        child: Padding(
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
                            const Icon(Icons.sort),
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
                            backgroundImage:
                                AssetImage(controller.items[index].image),
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
              ),
              Center(
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
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
                                const Icon(Icons.arrow_forward,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Color(0xffDEDBDB),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color(0xffFFA3B3),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Color(0xffDEDBDB),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                              const Icon(Icons.arrow_forward,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 400,
                color: Colors.transparent,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: indexController.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 241,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(indexController.items[index].imagePath),
                            const SizedBox(height: 8),
                            Text(
                              indexController.items[index].productName,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff21003D),
                              ),
                            ),
                            Text(
                              indexController.items[index].description,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: const Color(0xff21003D),
                              ),
                            ),
                            Text(
                              indexController.items[index].price,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: const Color(0xff21003D),
                              ),
                            ),
                            Text(
                              indexController.items[index].oldPrice,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: const Color(0xff808488),
                              ),
                            ),
                            Text(
                              indexController.items[index].discount,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: const Color(0xff21003D),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  indexController.items[index].ratings,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: const Color(0xff21003D),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  indexController.items[index].totalRatings,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: const Color(0xff21003D),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 350,
                  height: 84,
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/specialOffers.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            'Special Offers 😱',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'We make sure you get the\n offer you need at best prices',
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
