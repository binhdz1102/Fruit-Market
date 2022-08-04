import 'package:flutter/material.dart';

import '../../Models/Category Items/category_items.dart';
import '../Item list UI/item_shopping_cart.dart';
import 'change_address_page2.dart';
import 'detail_item_page6.dart';
import '../../Data/initmock_data.dart';
import '../../Models/item_product.dart';
import 'wishlist_page9.dart';

class ShoppingCartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShoppingCartScreenState();
  }
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  Set<CategoryItem> setOfCategory = Set<CategoryItem>();
  var Alist = [];
  var costPrice;

  @override
  void initState() {
    initShoppingCartData();
    calculateCostPrice();
    super.initState();
  }

  void initShoppingCartData() {
    int cost = 0;
    shoppingCartList.forEach((element) {
      cost += element.getNumberShoppingSelected * int.parse(element.price);
    });
    costPrice = cost;

    Alist.clear();
    for (int i = 0; i < shoppingCartList.length; i++) {
      setOfCategory.add(shoppingCartList[i].category);
    }
    for (int i = 0; i < setOfCategory.length; i++) {
      List<ItemProduct> alist = [];
      for (int j = 0; j < shoppingCartList.length; j++) {
        if (setOfCategory.elementAt(i) == shoppingCartList[j].category) {
          alist.add(shoppingCartList[j]);
        }
      }
      Alist.add(alist);
    }
  }

  void refresh() {
    setState(() {
      initShoppingCartData();
    });
  }

  void calculateCostPrice() {
    int cost = 0;
    shoppingCartList.forEach((element) {
      cost += element.getNumberShoppingSelected * int.parse(element.price);
    });
    costPrice = cost;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Shopping Cart"),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 140,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    size: 20,
                  ),
                  title: Row(
                    children: [
                      Text(
                        currentUser.address,
                        style: TextStyle(fontSize: 13),
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  trailing: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangeAddressScreen()),
                      );
                    },
                    child: Text("Change Address"),
                  ),
                ),

                //////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////LIST ITEMS/////////////////////////////////////

                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: setOfCategory.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            /////////////TIEU DE/////////////////
                            Container(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                              color: Colors.grey.shade300,
                              height: 30,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  setOfCategory
                                      .elementAt(index)
                                      .toString()
                                      .split('.')
                                      .last,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            /////////////DANH SACH ITEMS CUA TIEU DE/////////////////
                            ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: Alist[index].length,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      Divider(),
                              itemBuilder: (BuildContext context, int index2) {
                                return ItemShoppingCart(
                                    notifyParent: refresh,
                                    item: Alist[index][index2]);
                              },
                            ),
                          ],
                        );
                      }),
                ),

                //////////////////////////////////////////////////////////////////////////////
              ],
            ),
          ),

          ////////////////////////////// line cuoi trang //////////////////////////////////

          Container(
            padding: EdgeInsets.fromLTRB(20, 16, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Total- RS " + costPrice.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 130,
                  height: 32,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {
                      if (costPrice > 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WishListScreen(
                              billNumber: costPrice,
                            ),
                          ),
                        );
                      } else {
                        print("Gio hang trong, khong the thanh toan!");
                      }
                    },
                    child: Text(
                      "Place Order",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
