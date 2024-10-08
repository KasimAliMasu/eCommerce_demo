import 'package:ecommerce_app/model/trending_photos.dart';
import 'package:ecommerce_app/trending/widget/items_widget.dart';
import 'package:ecommerce_app/home/widgets/search_widget.dart';
import 'package:ecommerce_app/trending/widget/trending_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrendingProductsScreen extends StatelessWidget {
  final List<ProductImage> controllers = ProductItems().getProductList();

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
              const SearchWidget(),
              const SizedBox(height: 15),
              const ItemsWidget(),
              const SizedBox(height: 20),
              // Pass the controllers list to the TrendingItems widget
              TrendingItems(controllers: controllers),
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
                    onTap: () {},
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
                  SvgPicture.asset(
                    'icons/heart 1.svg',
                    color: Colors.red,
                  ),
                  const Text(
                    "Wishlist",
                    style: TextStyle(color: Colors.red),
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
        backgroundColor: Colors.white,
        elevation: 5,
        onPressed: () {},
        child: SvgPicture.asset(
          'icons/shopping-cart 2.svg',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
