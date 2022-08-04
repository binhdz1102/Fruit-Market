import 'package:flutter/material.dart';

import '../../Data/initmock_data.dart';
import '../Item list UI/item_product_list_page.dart';
import '../Routes/notifications_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this,initialIndex: 1);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Fruit Market"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              print("Ban vua bam vao thong bao!");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsScreen()),
              );
            },
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      //////////////////////////////////Body page////////////////////
      body: SingleChildScrollView(child: Column(
        children: [
          SearchBar(),

          /////////////////////tabbar/////////////////
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: MediaQuery.of(context).size.height - 196,
                child: Column(
                  children: [
                    Container(
                      // height: 50,
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            child: TabBar(
                              indicatorPadding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                              unselectedLabelColor: Colors.grey,
                              labelColor: Colors.white,
                              indicator: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              controller: tabController,
                              tabs: [
                                Tab(
                                  text: 'Vegetables',
                                ),
                                Tab(
                                  text: 'Fruits',
                                ),
                                Tab(
                                  text: 'Dry Fruits',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Home1(),
                          Home2(),
                          Home3(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //////////////class moi////////////////////
        ],
      ),),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            color: Colors.white,
            height: 60,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 25,
            color: Colors.green,
          ),
        ),
        Positioned(
          top: 0,
          left: 16,
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 50,
              child: Container(
                width: MediaQuery.of(context).size.width - 32,
                child:

                    //su dung textfield thay cho search bar
                    TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width - 36,
      height: MediaQuery.of(context).size.height - 196,
      child: ListView.separated(
          itemCount: ListItemProductVegetablesList.length,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 30,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ItemProductListScreen(
              itemProductList: ListItemProductVegetablesList[index],
            );
          }),
    );
  }
}


class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width - 36,
      height: MediaQuery.of(context).size.height - 196,
      child: ListView.separated(
          itemCount: ListItemProductFruitsList.length,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: 30,
              ),
          itemBuilder: (BuildContext context, int index) {
            return ItemProductListScreen(
              itemProductList: ListItemProductFruitsList[index],
            );
          }),
    );
  }
}

class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width - 36,
      height: MediaQuery.of(context).size.height - 196,
      child: ListView.separated(
          itemCount: ListItemProductFruitsList.length,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 30,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ItemProductListScreen(
              itemProductList: ListItemProductFruitsList[index],
            );
          }),
    );
  }
}

