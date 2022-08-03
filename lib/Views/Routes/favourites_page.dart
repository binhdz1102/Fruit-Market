import 'package:flutter/material.dart';

import '../Item list UI/item_farvourite.dart';
import '../../Data/initmock_data.dart';

class FavouritesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouritesScreenState();
  }
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  //init List of favourite
  List<int> favouriteList = [];

  @override
  void initState() {
    for (int i = 0; i < items.length; i++)
      if (items[i].isFavourited) favouriteList.add(items[i].id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Favourites"),
      ),
      body: Container(
        color: Colors.white,
        child: favouriteList.length == 0
            ? Center(
                child: Text(
                  "Empty List",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            : ListView.separated(
                itemCount: favouriteList.length,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ItemFavourite(
                    id: favouriteList[index],
                  );
                }),
      ),
    );
  }
}


