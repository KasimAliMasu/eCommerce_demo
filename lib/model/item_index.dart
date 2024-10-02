class ProductCard {
  final String imagePath;
  final String productName;
  final String description;
  final String price;
  final String oldPrice;
  final String discount;
  final String ratings;
  final String totalRatings;

  ProductCard({
    required this.imagePath,
    required this.productName,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.ratings,
    required this.totalRatings,
  });
}

class ImageItems {
  List<ProductCard> items = [
    ProductCard(
      imagePath: 'images/womenkurta.png',
      productName: 'Women Printed Kurta',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: '₹1500',
      oldPrice: '₹2499',
      discount: '40% off',
      ratings: '★ ★ ★ ★ ☆',
      totalRatings: '56890',
    ),
    ProductCard(
      imagePath: 'images/hrxshoes.png',
      productName: 'HRX by Hrithik Roshan',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: '₹2499',
      oldPrice: '₹4999',
      discount: '50% off',
      ratings: '★ ★ ★ ★ ★',
      totalRatings: '344567',
    ),
    ProductCard(
      imagePath: 'images/philips.png',
      productName: 'Philips BHH880/10',
      description:
          'Hair Straightening Brush With Keratin Infused Bristles (Black).',
      price: '₹999',
      oldPrice: '₹1999',
      discount: '50% off',
      ratings: '★ ★ ★ ★ ★',
      totalRatings: '646776',
    ),
    ProductCard(
      imagePath: 'images/titanwatch.png',
      productName: 'TITAN Men Watch- 1806N',
      description:
          'This Titan watch in Black color is I wanted to buy for a long time',
      price: '₹1500',
      oldPrice: '₹3500',
      discount: '60% off',
      ratings: '★ ★ ★ ★ ★',
      totalRatings: '15007',
    ),
  ];
}
