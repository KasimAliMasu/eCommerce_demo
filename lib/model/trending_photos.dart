class ProductImage {
  final String imagePath;
  final String productName;
  final String description;
  final String price;

  final String ratings;
  final String totalRatings;

  ProductImage({
    required this.imagePath,
    required this.productName,
    required this.description,
    required this.price,
    required this.ratings,
    required this.totalRatings,
  });
}

class ProductItems {
  List<ProductImage> getProductList() {
    return [
      ProductImage(
        imagePath: 'images/blackWinterHoody.png',
        productName: 'Black Winter Hoody',
        description: 'Autumn And Winter Casual cotton-padded jacket...',
        price: '₹499',
        ratings: '★ ★ ★ ★ ☆',
        totalRatings: '6,890',
      ),
      ProductImage(
        imagePath: 'images/mensStarry.png',
        productName: 'Mens Starry',
        description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
        price: '₹399',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '1,52,344',
      ),
      ProductImage(
        imagePath: 'images/blackDress.png',
        productName: 'Black Dress',
        description: 'Solid Black Dress for Women, Sexy Chain Shorts Ladi...',
        price: '₹2,000',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '5,23,456',
      ),
      ProductImage(
        imagePath: 'images/pinkEmbroide.png',
        productName: 'Pink Embroide',
        description: 'EARTHEN Rose Pink Embroidered Tiered Max...',
        price: '₹1,900',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '45,678',
      ),
      ProductImage(
        imagePath: 'images/flareDress.png',
        productName: 'Flare Dress',
        description:
            'Antheaa Black & Rust Orange Floral Print Tiered Midi F...',
        price: '₹1,990',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '3,35,566',
      ),
      ProductImage(
        imagePath: 'images/denimDress.png',
        productName: 'denim dress',
        description: 'Blue cotton denim dress Look 2 Printed cotton dr...',
        price: '₹999',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '27,344',
      ),
      ProductImage(
        imagePath: 'images/jordanStay.png',
        productName: 'Jordan Stay',
        description: 'The classic Air Jordan 12 to create a shoe thats fres...',
        price: '₹4,999',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '10,23,456',
      ),
      ProductImage(
        imagePath: 'images/realme7.png',
        productName: 'Realme 7 ',
        description: '6 GB RAM | 64 GB ROM | Expandable Upto 256...',
        price: '₹3,499',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '3,44,567',
      ),
      ProductImage(
        imagePath: 'images/sonyPS4.png',
        productName: 'Sony PS4',
        description: 'Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis...',
        price: '₹1,999',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '8,35,566',
      ),
      ProductImage(
        imagePath: 'images/blackJacket12.png',
        productName: 'Black Jacket 12',
        description: 'This warm and comfortable jacket is great for learni...',
        price: '₹2,999',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '2,23,569',
      ),
      ProductImage(
        imagePath: 'images/D7200DigitalCamera.png',
        productName: 'D7200 Digital Camera',
        description: 'D7200 Digital Camera (Nikon) In New Area...',
        price: '₹26,999',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '67,456',
      ),
      ProductImage(
        imagePath: 'images/boysFormalShoes.png',
        productName: 'men’s & boys Shoes',
        description: 'George Walker Derby Brown Formal Shoes',
        price: '₹999',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '13,45,678',
      ),
      ProductImage(
        imagePath: 'images/muscleBlaze.png',
        productName: 'Muscle Blaze',
        description: 'NUTRITIONAL POWERHOUSE: MuscleBl...',
        price: '₹3,900',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '1,35,566',
      ),
      ProductImage(
        imagePath: 'images/hotChocalate.png',
        productName: 'Hot chocolate',
        description: 'chocolate with ashwagandha and get a coconu...',
        price: '₹200',
        ratings: '★ ★ ★ ★ ★',
        totalRatings: '6,23,569',
      ),
    ];
  }
}
