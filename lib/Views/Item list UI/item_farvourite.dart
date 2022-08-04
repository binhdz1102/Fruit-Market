import 'package:flutter/material.dart';

import '../../Data/initmock_data.dart';
import '../../Models/Category Items/category_items.dart';
import '../../Models/item_product.dart';
import '../Button UI/add_subtract_button.dart';
import '../Routes/detail_item_page6.dart';

class ItemFavourite extends StatefulWidget {
  late int id;

  ItemFavourite({required this.id});

  @override
  State<StatefulWidget> createState() {
    return _ItemFavouriteState();
  }
}

class _ItemFavouriteState extends State<ItemFavourite> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int limitProduct = 100;

  ItemProduct _findItemById(int id) {
    for (int i = 0; i < items.length; i++) {
      if (items[i].id == id) return items[i];
    }
    return ItemProduct(
        category: CategoryItem.Fruits,
        nutritions: [],
        score: 0,
        imagePath: '',
        id: -1,
        isFavourited: false,
        detailProduct: '',
        name: '',
        price: '');
  }

  List<Widget> genListStars(int score) {
    List<Widget> liststar = [];
    for (int i = 0; i < score; i++)
      liststar.add(
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 15,
        ),
      );
    for (int i = score; i < 5; i++)
      liststar.add(
        Icon(
          Icons.star,
          color: Colors.grey,
          size: 15,
        ),
      );
    return liststar;
  }

  void _showMessageInScaffold(String message) {
    try {
      _scaffoldKey.currentState?.showSnackBar(
        SnackBar(
          content: Text(message),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // some code
              print('Action in Snackbar has been pressed.');
            },
          ),
        ),
      );
    } on Exception catch (e, s) {
      print(s);
    }
  }

  @override
  Widget build(BuildContext context) {
    ItemProduct item = _findItemById(widget.id);
    return Container(
      height: 120,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: InkWell(
        onTap: () {
          //go to detail item
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailItem(item: item)),
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
//////////////////////////cot 1//////////////////////////
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child:
                    // Image.asset(
                    //   item.imagePath,
                    //   width: 100,
                    //   height: 100,
                    //   fit: BoxFit.cover,
                    // ),

                    // Image.network(
                    //   item.imagePath,
                    //   width: 100,
                    //   height: 100,
                    //   fit: BoxFit.cover,
                    //
                    // ),

                    FadeInImage(
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder:
                      AssetImage("assets/Placed Holder/placedholder.gif"),
                  image: NetworkImage(item.imagePath),
                ),
              ),
              flex: 2,
            ),

            SizedBox(
              width: 10,
            ),

//////////////////////////cot 2//////////////////////////
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      item.name,
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Text(
                    "Pick up from organic farms",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(
                    children: genListStars(item.score),
                  ),
                  Row(
                    children: [
                      //dau tru

                      Container(
                        width: 25,
                        height: 25,
                        child: MaterialButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            print("ban vua an -");
                            setState(() {
                              if (item.getNumberFavouriteSelected > 1) {
                                item.setNumberFavouriteSelected =
                                    item.getNumberFavouriteSelected - 1;
                              }
                            });
                          },
                          child: IconDecIncButton(
                                  signButton: '_', topPos: -1, leftPos: 8)
                              .genIcon(),
                        ),
                      ),

                      //bien count
                      Container(
                        width: 35,
                        height: 25,
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Align(
                          alignment: Alignment.center,
                          child:
                              Text(item.getNumberFavouriteSelected.toString()),
                        ),
                      ),

                      //dau cong
                      Container(
                        width: 25,
                        height: 25,
                        child: MaterialButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            print("ban vua an +");
                            setState(() {
                              if (item.getNumberFavouriteSelected <
                                  limitProduct) {
                                item.setNumberFavouriteSelected =
                                    item.getNumberFavouriteSelected + 1;
                              }
                            });
                          },
                          child: IconDecIncButton(
                                  signButton: '+', topPos: 4, leftPos: 8)
                              .genIcon(),
                        ),
                      ),

                      ////////////
                    ],
                  ),
                ],
              ),
              flex: 3,
            ),

//////////////////////////cot 3//////////////////////////

            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item.price + " Per / kg"),
//elavated button
                    Container(
                      width: 80,
                      height: 30,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                        onPressed: () {
                          print("ban vua an nut Add");
                          setState(() {
                            // pass favouriteItem to ShoppingCartScreen

                            bool exits = shoppingCartList
                                .any((element) => element.id == item.id);

                            if (!exits) {
                              shoppingCartList.add(item);
                              item.setNumberShoppingSelected =
                                  item.getNumberFavouriteSelected;
                            } else {
                              item.setNumberShoppingSelected =
                                  item.getNumberShoppingSelected +
                                      item.getNumberFavouriteSelected;
                            }

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  'Ban vua them ${item.getNumberFavouriteSelected} ${item.name} vao Shopping cart!'),
                            ));
                          });
                        },
                        child: Text(
                          "Add",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
