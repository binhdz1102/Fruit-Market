import 'package:flutter/material.dart';

import 'item_product.dart';

//thong tin 1 list chua:
//Title + Discount
//detail
//ListView cac ItemProductScreen

class ItemProductList {
  late String title;
  late String discount;
  late String detail;

  late List<ItemProduct> itemProductList;

  ItemProductList(
      {required this.title,
      required this.discount,
      required this.detail,
      required this.itemProductList});
}
