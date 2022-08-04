import 'package:flutter/material.dart';

import '../../Models/item_product_list.dart';
import 'item_product_page.dart';

//tieu de cua category list
//mo ta
//danh dach ListView cac item_product 5 thanh phan cho moi item(imagePath,name,score,price,isFavourited)

class ItemProductListScreen extends StatefulWidget {
  late ItemProductList itemProductList;

  ItemProductListScreen({required this.itemProductList});

  @override
  State<StatefulWidget> createState() {
    return _ItemProductListScreenState(ItemItemProductList: itemProductList);
  }
}

class _ItemProductListScreenState extends State<ItemProductListScreen> {
  late ItemProductList ItemItemProductList;

  _ItemProductListScreenState({required this.ItemItemProductList});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(8),
      child: Column(
        children: [
          //title + discount
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Text(
                    ItemItemProductList.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "("+ItemItemProductList.discount+")",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //detail

          Padding(
            padding: EdgeInsets.fromLTRB(8, 4, 0, 2),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                ItemItemProductList.detail,
              ),
            ),
          ),

          /////////su dung listview builder ok///////////////
          Container(
            height: 233,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: ItemItemProductList.itemProductList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 143,
                  height: 233,
                  child: ItemProductScreen(item: ItemItemProductList.itemProductList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
