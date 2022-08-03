import 'package:fruitmarket/Models/item_product.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<ItemProduct> getTransactions() =>
      Hive.box<ItemProduct>('itemproduct');
}