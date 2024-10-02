class CategoryImage {
  final String title;

  final String image;

  CategoryImage({required this.title, required this.image});
}

class CategoryImages {
  List<CategoryImage> items = [
    CategoryImage(
      title: "Beauty",
      image: "images/beautylogocategory.png",
    ),
    CategoryImage(
      title: "Fashion",
      image: "images/fashionlogocategory.png",
    ),
    CategoryImage(
      title: "Kids",
      image: "images/kidslogocategory.png",
    ),
    CategoryImage(
      title: "Mens",
      image: "images/menslogocategory.png",
    ),
    CategoryImage(
      title: "Womens",
      image: "images/womenslogocategory.png",
    ),
  ];
}
