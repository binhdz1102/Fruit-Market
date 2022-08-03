import 'package:cloud_firestore/cloud_firestore.dart';

import '../Models/Category Items/category_items.dart';
import '../Models/item_product.dart';
import '../Models/item_product_list.dart';


List<ItemProduct> items = [];
List<ItemProduct> shoppingCartList = [];

//fruits
List<ItemProduct> itemProductFruitsLists = [];
List<ItemProduct> itemProductFruitsLists1 = [];
List<ItemProduct> itemProductFruitsLists2 = [];
List<ItemProduct> itemProductFruitsLists3 = [];
var ListItemProductFruitsList = [
  listFruitItem,
  listFruitItem1,
  listFruitItem2,
  listFruitItem3
];

//vegetables
List<ItemProduct> itemProductVegetablesLists = [];
List<ItemProduct> itemProductVegetablesLists1 = []; //mixed vegetable pack
List<ItemProduct> itemProductVegetablesLists2 = [];
List<ItemProduct> itemProductVegetablesLists3 = [];
var ListItemProductVegetablesList = [
  listVegetableItem,
  listVegetableItem1,
  listVegetableItem2,
  listVegetableItem3
];

CategoryItem categoryItem(String asString) {
  if (asString == "CategoryItem.Vegetables") return CategoryItem.Vegetables;
  if (asString == "CategoryItem.Organic_Fruits")
    return CategoryItem.Organic_Fruits;
  return CategoryItem.Fruits;
}

List<String> nutritionItem(String asNutrition) {
  String temp = " " + asNutrition.substring(1, asNutrition.length - 1);
  return temp.split(",");
}

void initdata() async {
///////////////////////////////////init items/////////////////////////////////////////
  CollectionReference productList =
      FirebaseFirestore.instance.collection('ItemProduct');
  await productList.get().then((snapshot) {
    // print("Do dai cua snapshot docs: ${snapshot.docs.length}");
    snapshot.docs.forEach((adoc) {
      Map<String, dynamic> mapofadoc = adoc.data() as Map<String, dynamic>;
      var itemproduct = ItemProduct(
          imagePath: mapofadoc['imagePath'],
          name: mapofadoc['name'],
          detailProduct: mapofadoc['detailProduct'],
          nutritions: nutritionItem(mapofadoc['nutritions']),
          price: mapofadoc['price'],
          id: mapofadoc['id'],
          category: categoryItem(mapofadoc['category']),
          score: mapofadoc['score'],
          isFavourited: false);
      // print("Them ${itemproduct.name} vao list!");
      items.add(itemproduct);
    });
  });

  //sort list
  items.sort((a, b) => (a.id).compareTo(b.id));

  //fruits
  itemProductFruitsLists.addAll(items.sublist(0, 7));
  itemProductFruitsLists1.addAll(items.sublist(7, 11));
  itemProductFruitsLists2.addAll(items.sublist(11, 16));
  itemProductFruitsLists3.addAll(items.sublist(16, 20));
  //vegetables
  itemProductVegetablesLists.addAll(items.sublist(20, 25));
  itemProductVegetablesLists1.addAll(items.sublist(25, 31));
  itemProductVegetablesLists2.addAll(items.sublist(31, 34));
  itemProductVegetablesLists3.addAll(items.sublist(34, 37));
  //dry fruits (same as fruits)



/////////////////////////////////init list of list items/////////////////////////
}

var listFruitItem = ItemProductList(
    title: "Organic Fruits",
    discount: "20% Off",
    detail: "Pick up from organic farms",
    itemProductList: itemProductFruitsLists);

var listFruitItem1 = ItemProductList(
    title: "Mixed Fruit Pack",
    discount: "10% Off",
    detail: "Fruit mix fresh pack",
    itemProductList: itemProductFruitsLists1);

var listFruitItem2 = ItemProductList(
    title: "Stone Fruits",
    discount: "20% Off",
    detail: "Fresh Stone Fruits",
    itemProductList: itemProductFruitsLists2);

var listFruitItem3 = ItemProductList(
    title: "Melons",
    discount: "5% Off",
    detail: "Fresh Melons Fruits",
    itemProductList: itemProductFruitsLists3);

//////////////////////////////////////

var listVegetableItem = ItemProductList(
    title: "Organic Vegetables",
    discount: "20% Off",
    detail: "Pick up from organic farms",
    itemProductList: itemProductVegetablesLists);

var listVegetableItem1 = ItemProductList(
    title: "Mixed Vegetables Pack",
    discount: "10% Off",
    detail: "Vegetable mix fresh pack",
    itemProductList: itemProductVegetablesLists1);

var listVegetableItem2 = ItemProductList(
    title: "Allium Vegetables",
    discount: "20% Off",
    detail: "Fresh Allium Vegetables",
    itemProductList: itemProductVegetablesLists2);

var listVegetableItem3 = ItemProductList(
    title: "Root Vegetables",
    discount: "5% Off",
    detail: "Fresh Root Vegetables",
    itemProductList: itemProductVegetablesLists3);
