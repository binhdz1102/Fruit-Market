import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruitmarket/Models/item_product.dart';

import 'Data/initmock_data.dart';
import 'Data/mockdata2.dart';

class Firebasetesting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirebasetestingState();
  }
}

class _FirebasetestingState extends State<Firebasetesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cloud storage"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            itemss.forEach((element) {
              createUser(ip: element);
            });
          },
          child: Text('Go'),
        ),
      ),
    );
  }

  Future createUser({required ItemProduct ip}) async {
    final docItemProduct = FirebaseFirestore.instance
        .collection('ItemProduct')
        .doc(ip.id.toString());
    final json = {
      'name': ip.name,
      'category': ip.category.toString(),
      'detailProduct': ip.detailProduct,
      'isFavourited': false,
      'imagePath': ip.imagePath,
      'price': ip.price,
      'id': ip.id,
      'score': ip.score,
      'nutritions':ip.nutritions.toString(),
    };

    await docItemProduct.set(json);
    print('already finished!');
  }
}
