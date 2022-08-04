import 'package:flutter/material.dart';

import '../Routes/detail_item_page6.dart';
import '../../Models/item_product.dart';

class ItemProductScreen extends StatefulWidget {
  late ItemProduct item;

  ItemProductScreen({required this.item});

  @override
  State<StatefulWidget> createState() {
    return _ItemProductScreenState( item: item);
  }
}

class _ItemProductScreenState extends State<ItemProductScreen> {
  late ItemProduct item;
  _ItemProductScreenState({required this.item});


  List<Widget> genListStars() {
    List<Widget> liststar = [];
    for (int i = 0; i < item.score; i++)
      liststar.add(Icon(
        Icons.star,
        color: Colors.yellow,
        size: 15,
      ));
    for (int i = item.score; i < 5; i++)
      liststar.add(Icon(
        Icons.star,
        color: Colors.grey,
        size: 15,
      ));
    return liststar;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: 143,
        height: 233,
        padding: EdgeInsets.fromLTRB(8, 10, 12, 10),
        child: Column(
          children: [
            //image
            Stack(
              children: [
                Material(
                  child: InkWell(
                    onTap: () {
                      print("Ban vua click vao detail");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailItem(item: item)),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      //add border radius
                      child: Image.asset(
                        item.imagePath,
                        width: 143,
                        height: 153,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        item.isFavourited = !item.isFavourited;
                        print("ban vua bam vao favourite");
                        if (!item.isFavourited){
                          item.setNumberFavouriteSelected=1;
                        }
                      });
                    },
                    icon: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      child: Icon(
                        Icons.favorite,
                        color: item.isFavourited ? Colors.red : Colors.black,
                      ),
                    ),
                  ),
                  top: 1,
                  right: 1,
                ),
              ],
            ),
            //row of stars
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Row(
                children: genListStars(),
              ),
            ),

            //name of product
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  softWrap: false,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  item.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //detail of product (price/weight)
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "₹ " + item.price + " Per/ kg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
