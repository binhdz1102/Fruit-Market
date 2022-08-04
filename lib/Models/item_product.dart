import 'Category Items/category_items.dart';

class ItemProduct {
  late String imagePath;
  late String name;
  late String detailProduct;
  late List<String> nutritions;
  late String price;
  late CategoryItem category;
  late int score;
  late bool isFavourited;
  late int id;
  int _numberFavouriteSelected = 1;
  int _numberShoppingCartSelected = 0;

  ItemProduct(
      {required this.imagePath,
      required this.name,
      required this.detailProduct,
      required this.nutritions,
      required this.price,
      required this.id,
      required this.category,
      required this.score,
      required this.isFavourited});

  int get getNumberFavouriteSelected {
    return _numberFavouriteSelected;
  }

  set setNumberFavouriteSelected(int number) {
    _numberFavouriteSelected = number;
  }

  int get getNumberShoppingSelected {
    return _numberShoppingCartSelected;
  }

  set setNumberShoppingSelected(int number) {
    _numberShoppingCartSelected = number;
  }


}
