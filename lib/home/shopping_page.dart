import 'package:ecommerce_app/Profile.dart';
import 'package:ecommerce_app/home/widgets/all_featured.dart';
import 'package:ecommerce_app/home/widgets/category_widget.dart';
import 'package:ecommerce_app/home/widgets/circleavatar_widget.dart';
import 'package:ecommerce_app/home/widgets/deal_widget.dart';
import 'package:ecommerce_app/home/widgets/heelsimage_widget.dart';
import 'package:ecommerce_app/home/widgets/images_product.dart';
import 'package:ecommerce_app/home/widgets/offproduct_widget.dart';
import 'package:ecommerce_app/home/widgets/offshoes_widget.dart';
import 'package:ecommerce_app/home/widgets/product_widget.dart';
import 'package:ecommerce_app/home/widgets/search_widget.dart';
import 'package:ecommerce_app/home/widgets/specialoffers_widget.dart';
import 'package:ecommerce_app/home/widgets/summer_sale.dart';
import 'package:ecommerce_app/home/widgets/trending_product.dart';
import 'package:ecommerce_app/model/category_images.dart';
import 'package:ecommerce_app/model/images_product.dart';
import 'package:ecommerce_app/model/item_index.dart';
import 'package:ecommerce_app/trending/widget/trending_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_app/product_details/Shop_page.dart';

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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            child: CircleAvatar(
              child: Image.asset(
                'images/profilelogo.png',
                height: 40,
              ),
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
              const SizedBox(height: 20),
              const all_Featured(),
              const SizedBox(height: 20),
              CategoryWidget(controller: controller),
              const OffProductWidget(),
              const SizedBox(height: 10),
              const CircleAvatarWidget(),
              const SizedBox(height: 12),
              const DealWidget(),
              const SizedBox(height: 10),
              ProductWidget(indexController: indexController),
              const SizedBox(height: 20),
              const SpecialOffersWidget(),
              HeelsImageWidget(),
              const SizedBox(height: 16),
              const TrendingProduct(),
              const SizedBox(height: 16),
              ImagesProduct(items: productItems),
              const SizedBox(height: 16),
              SummerSale(),
              const SizedBox(height: 16),
              OffShoesWidget(),
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
                      color: Colors.red,
                    ),
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(color: Colors.red),
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
        backgroundColor: Colors.white,
        elevation: 5,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShopPage(),
            ),
          );
        },
        child: SvgPicture.asset(
          'icons/shopping-cart 2.svg',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
