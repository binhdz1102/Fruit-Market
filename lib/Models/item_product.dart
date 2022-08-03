import 'Category Items/category_items.dart';
import 'package:hive/hive.dart';

part 'item_product.g.dart';

//su dung Hive luu tru (chua su dung)
@HiveType(typeId: 0)
class ItemProduct {
  @HiveField(1)
  late String imagePath;
  @HiveField(2)
  late String name;
  @HiveField(3)
  late String detailProduct;
  @HiveField(4)
  late List<String> nutritions;
  @HiveField(5)
  late String price;
  @HiveField(6)
  late CategoryItem category;
  @HiveField(7)
  late int score;
  @HiveField(8)
  late bool isFavourited;
  @HiveField(9)
  late int id;
  @HiveField(10)
  int _numberFavouriteSelected = 1;
  @HiveField(11)
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
