class Product {
  final String imagePath;
  final String description;
  final String price;
  final String oldPrice;
  final String discount;

  Product({
    required this.imagePath,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.discount,
  });
}

final List<Product> productItems = [
  Product(
    imagePath: 'images/watchImage.png',
    description: 'IWC Schaffhausen2021 Pilots Watch "SIHH 2019"\n 44mm',
    price: '\₹650',
    oldPrice: '\₹1599',
    discount: '60% off',
  ),
  Product(
    imagePath: 'images/shoesImage.png',
    description: 'Labbin White Sneakers For Men and Female',
    price: '\₹650',
    oldPrice: '\₹1250',
    discount: '70% off',
  ),
  Product(
    imagePath: 'images/handbag.png',
    description: 'Mammon Womens Handbag (Set of 3, Beige)',
    price: '₹750',
    oldPrice: '₹1999',
    discount: '60% off',
  ),
  Product(
    imagePath: 'images/womenSandal.png',
    description: 'Do Bhai Women Wedges Sandal (Butterfly)',
    price: '₹750',
    oldPrice: '₹1499',
    discount: '50% off',
  ),
  Product(
    imagePath: 'images/lipstick.png',
    description: 'Lakme Enrich Matte Lipstick - Shade RM1(4.7gm)',
    price: '₹950',
    oldPrice: '₹1990',
    discount: '60% off',
  )
];
