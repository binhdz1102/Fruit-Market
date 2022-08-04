import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'Models/Category Items/category_items.dart';
import 'Models/item_product.dart';
import 'Data/initmock_data.dart';
import 'Views/Splash Screen Turtorial/loading_page28.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //init firebase
  await Firebase.initializeApp().whenComplete(() {
    print("Init firebase completed!");
  });

  //init data
  initdata();

  //init Hive
  await Hive.initFlutter();
  Hive.registerAdapter(ItemProductAdapter());
  Hive.registerAdapter(CategoryItemAdapter());
  await Hive.openBox<ItemProduct>('itemproduct');

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(AppHomePage());
}

class AppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Full App
    return MaterialApp(
      title: "Fruit Market",
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
