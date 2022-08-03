import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'Models/item_product.dart';

class GetObjectFromCloud extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GetObjectFromCloudState();
  }
}

class _GetObjectFromCloudState extends State<GetObjectFromCloud> {

  Future getProductList() async {
    CollectionReference productList =
    FirebaseFirestore.instance.collection('ItemProduct');
    try {
      await productList.doc("5").get().then((querySnapshot) {

        // var pr = querySnapshot.data();
        //
        // print("Gia tri cua querySnapshot: ${pr}");
        //
        // Map<String, dynamic> data =
        // pr as Map<String, dynamic>;
        // print("Gia tri cua name trong pr: ${data['name']}");

        Map<String, dynamic> dataAProduct =
        querySnapshot.data() as Map<String, dynamic>;

        print("Do dai cua thong tin dataAProduct: ${dataAProduct.length}");

      });
      /////////////////////////////////////////////////

      await productList.get().then((snapshot){
        print("Do dai cua snapshot docs: ${snapshot.docs.length}");
        //lay ra 1 product trong list
        var adoc = snapshot.docs[5];
        //convert adoc to map cua 1 item
        Map<String, dynamic> testadoc =
        adoc.data() as Map<String, dynamic>;

        print("Thu lay ket qua cua testadoc: ${testadoc['name']} co id la: ${testadoc['id']}");


      });


      /////////////////////////////////////////////////

    } catch (e){
      print(e.toString());
      return null;
    }
  }



  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('ItemProduct');
    print("////////begin testing///////");

    getProductList();


    print("///////below testing////////");
    return Scaffold(
      body: Center(
        child: FutureBuilder<DocumentSnapshot>(
          future: users.doc("5").get(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text("Something went wrong");
            }

            if (snapshot.hasData && !snapshot.data!.exists) {
              return Text("Document does not exist");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              return Text("Name: ${data['name']} ${data['score']}");
            }

            return Text("loading");
          },
        ),
      ),
    );
  }
}
