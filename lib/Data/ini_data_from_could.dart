import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruitmarket/Models/item_product.dart';

import '../Models/Category Items/category_items.dart';
import 'initmock_data.dart';

void InitCloudData() async {
  print("Ham init cloud data dang chay!");
  CollectionReference productList =
      FirebaseFirestore.instance.collection('ItemProduct');
  await productList.get().then((snapshot) {
    print("Do dai cua snapshot docs: ${snapshot.docs.length}");

    snapshot.docs.forEach((adoc) {
      Map<String, dynamic> mapofadoc = adoc.data() as Map<String, dynamic>;
      var itemproduct = ItemProduct(
          imagePath: mapofadoc['imagePath'],
          name: mapofadoc['name'],
          detailProduct: mapofadoc['detailProduct'],
          nutritions: ["nutritions"],
          price: mapofadoc['price'],
          id: mapofadoc['id'],
          category: CategoryItem.Fruits,
          score: mapofadoc['score'],
          isFavourited: false);
      print("Them ${itemproduct.name} vao list!");
      items.add(itemproduct);
    });




    ////////////////////
  //   //lay ra 1 product trong list
  //   var adoc = snapshot.docs[5];
  //   //convert adoc to map cua 1 item
  //   Map<String, dynamic> testadoc = adoc.data() as Map<String, dynamic>;
  //
  //   print(
  //       "Thu lay ket qua cua testadoc: ${testadoc['name']} co id la: ${testadoc['id']}");
  });
  print("Do dai hien tai cua items: ${items.length}");

  initdata();
  print("sau thuc hien fetch du lieu ${items.length}");
}
