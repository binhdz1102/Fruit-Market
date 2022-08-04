
import 'package:flutter/material.dart';
import '../../Data/initmock_data.dart';
import '../../Models/item_product.dart';
import 'shopping_cart_page.dart';

class DetailItem extends StatelessWidget {
  late ItemProduct item;

  DetailItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("DETAILS"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 140,
            child: ListView(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    item.imagePath,
                    height: 176,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  item.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    item.detailProduct,
                    style: TextStyle(fontSize: 13.5, color: Colors.grey),
                  ),
                ),
                Text(
                  "Nutrition",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                ///////////////////Nutrition///////////////////
                Container(
                  width: MediaQuery.of(context).size.width - 32,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: item.nutritions.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/dot.png',
                                // fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                item.nutritions[index],
                                style: TextStyle(
                                    fontSize: 13.5, color: Colors.grey),
                              )
                            ],
                          ),
                        );
                      }),
                ),

                //////////////////////////////////////
              ],
            ),
          ),

          ////////////////////////////// line cuoi trang //////////////////////////////////

          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "₹ " + item.price + " Per/ kg",
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
                      print("ban vua an nut buy now");

                      bool exits = shoppingCartList
                          .any((element) => element.id == item.id);
                      if (!exits) {
                        shoppingCartList.add(item);
                      }
                      item.setNumberShoppingSelected =
                          item.getNumberShoppingSelected + 1;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShoppingCartScreen()),
                      );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => WishListScreen(billNumber: int.parse(item.price),)),
                      // );
                    },
                    child: Text(
                      "Buy Now",
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
