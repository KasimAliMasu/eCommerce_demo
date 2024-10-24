import 'package:ecommerce_app/home/shopping_page.dart';
import 'package:ecommerce_app/product_details/widget/button_Widget.dart';
import 'package:ecommerce_app/product_details/widget/function_widget.dart';
import 'package:ecommerce_app/product_details/widget/shop_image.dart';
import 'package:ecommerce_app/trending/widget/trending_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final PageController _controller = PageController();
  final List<ShopItems> controlled = shopItemsList;

  final List<String> sizes = ['6 UK', '7 UK', '8 UK', '9 UK', '10 UK'];

  String selectedSize = '7 UK';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: const Color(0xffF2F2F2),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
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
              Container(
                height: 250,
                color: Colors.transparent,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: controlled.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          child: Image.asset(
                            controlled[index].image,
                            fit: BoxFit.cover,
                            height: 200,
                            width: 345,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    );
                  },
                ),
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: controlled.length,
                  effect: const ScaleEffect(
                    activeDotColor: Color(0xffF83758),
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Size: $selectedSize',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: sizes.map((size) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ChoiceChip(
                            label: Text(
                              size,
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: selectedSize == size
                                    ? Colors.white
                                    : const Color(0xffFA7189),
                              ),
                            ),
                            selected: selectedSize == size,
                            selectedColor: const Color(0xffFA7189),
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: selectedSize == size
                                    ? Colors.transparent
                                    : const Color(0xffFA7189),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onSelected: (bool selected) {
                              setState(() {
                                selectedSize = size;
                              });
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Nike Sneakers',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Vision Alta Men’s Shoes Size (All Colours)',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        '★ ★ ★ ★ ☆',
                        style: TextStyle(
                          color: Color(0xffEDB310),
                          fontSize: 21,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '56,890',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff828282)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '₹2,999',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff828282),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '₹1,500',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '50% Off',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffFA7189)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Product Details',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          'Perhaps the most iconic sneaker of all-time, this original "Chicago" colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' More',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffFA7189),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const FunctionWidget(),
                  const SizedBox(height: 10),
                  ButtonWidget(),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 76,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      'icons/home 1.svg',
                    ),
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrendingItems(
                            controllers: [],
                          ),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      'icons/heart 1.svg',
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Wishlist",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'icons/search 1.svg',
                  ),
                  const Text(
                    "Search",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'icons/settings.svg',
                  ),
                  const Text(
                    "Setting",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xffEB3030),
        elevation: 5,
        onPressed: () {},
        child: SvgPicture.asset(
          'icons/shopping-cart 2.svg',
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
