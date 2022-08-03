import 'package:flutter/material.dart';
import 'package:fruitmarket/Models/item_product.dart';
import 'package:hive/hive.dart';

import 'Data/initmock_data.dart';
import 'Models/Hive Box/boxes.dart';

//file thử
class Hivesaves extends StatefulWidget {
  const Hivesaves({Key? key}) : super(key: key);

  @override
  State<Hivesaves> createState() => ThuState();
}

class ThuState extends State<Hivesaves> {
  @override
  void dispose() {
    Hive.box('itemproduct').close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing Hive"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("them doi tuong!");
                    addProduct();
                  },
                  child: Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("edit doi tuong!");
                  },
                  child: Text('Edit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("delete doi tuong!");
                  },
                  child: Text('Delete'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("lay ra 1 doi tuong!");
                    getItemProduct();
                  },
                  child: Text('Get data'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Check:");
                    checkProduct();
                  },
                  child: Text('Check data'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future addProduct() async {
    final box = Boxes.getTransactions();
    items.forEach((element) {
      box.add(element);
    });
    print('add thanh cong');
    // box.put('mykey', transaction);

    // final mybox = Boxes.getTransactions();
    // final myTransaction = mybox.get('key');
    // mybox.values;
    // mybox.keys;
  }

  void checkProduct() async{
    final box = await Hive.openBox<ItemProduct>('itemproduct');
    final list = box.values.toList();

    print("Length: ${list.length}");

  }

  void getItemProduct() async{
    final box = await Hive.openBox<ItemProduct>('itemproduct');
    final list = box.values.toList();

    print('phan tu thu 5: ${list[5].name}');

  }



}
