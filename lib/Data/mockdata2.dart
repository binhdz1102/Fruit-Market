import '../Models/Category Items/category_items.dart';
import '../Models/item_product.dart';
import '../Models/item_product_list.dart';

int count_id = 0;

List<ItemProduct> itemss = [];
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

//dry fruits

void initdata2() {
///////////////////////////////////init items/////////////////////////////////////////
  var item0 = ItemProduct(
    id: count_id++,
    category: CategoryItem.Fruits,
    name: "Strawberry",
    detailProduct:
    "The garden strawberry (or simply strawberry, Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates. Artificial strawberry flavorings and aromas are also widely used in products such as candy, soap, lip gloss, perfume, and many others.",
    isFavourited: false,
    imagePath:
    "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicfruits%2Fanton-darius-FCrgmqqvl-w-unsplash.png?alt=media&token=8ee6535c-3b11-434b-b142-cefd756be283",
    price: "300",
    score: 4,
    nutritions: [
      "Vitamin C",
      "Zinc",
      "Potassium",
      "Iron",
      "Phosphorous"
          "Magnesium",
      "Fiber",
      "Vitamin K",
    ],
  );

  var item1 = ItemProduct(
    name: "Grapes",
    detailProduct:
    "Grapes will provide natural nutrients. The  Chemical in organic grapes which can be healthier hair and skin. It can be improve Your heart health. Protect your body from Cancer.",
    isFavourited: true,
    imagePath:
    "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicfruits%2Fharis-habul-a7CeloEQhLI-unsplash.png?alt=media&token=6742399a-be1a-48b1-a163-2e0d49e78159",
    price: "160",
    id: count_id++,
    category: CategoryItem.Fruits,
    score: 5,
    nutritions: [
      "Fiber",
      "Potassium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
  );

  var item2 = ItemProduct(
    name: "Cherry",
    detailProduct:
    "A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe (stone fruit). Commercial cherries are obtained from cultivars of several species, such as the sweet Prunus avium and the sour Prunus cerasus. The name 'cherry' also refers to the cherry tree and its wood, and is sometimes applied to almonds and visually similar flowering trees in the genus Prunus, as in ornamental cherry or cherry blossom. Wild cherry may refer to any of the cherry species growing outside cultivation, although Prunus avium is often referred to specifically by the name wild cherry in the British Isles.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicfruits%2Fcherry.png?alt=media&token=9c5d78b4-6bdc-46d4-9332-236ddd0ccde2",
    price: "123",
    score: 5,
    id: count_id++,
    category: CategoryItem.Fruits,
    nutritions: [
      "Choline",
      "Vitamin C",
      "Vitamin B6",
      "Calcium",
      "Potassium",
      "Zinc",
      "Vitamin K",
      "Phosphorous",
      "Sodium"
    ],
  );
  var item3 = ItemProduct(
    name: "Chrome Chrome",
    category: CategoryItem.Fruits,
    id: count_id++,
    detailProduct:
    "Rambutan is a medium-sized tropical tree in the family Sapindaceae. The name also refers to the edible fruit produced by this tree. The rambutan is native to Southeast Asia. It is closely related to several other edible tropical fruits including the lychee, longan, pulasan and mamoncillo",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicfruits%2Fchrome-chrome.jpg?alt=media&token=162e6fdc-7bb4-4d91-acdb-c63c35855f51",
    price: "250",
    score: 4,
    nutritions: [
      "Thiamine",
      "Niacin",
      "Riboflavin",
      "Magnesium",
      "Calcium",
      "Potassium",
      "Zinc",
      "Iron"
    ],
  );
  var item4 = ItemProduct(
    name: "Dragon Fly",
    category: CategoryItem.Fruits,
    id: count_id++,
    detailProduct:
    "A pitaya is the fruit of several different cactus species indigenous to the Americas. Pitaya usually refers to fruit of the genus Stenocereus, while pitahaya or dragon fruit refers to fruit of the genus Selenicereus (formerly Hylocereus), both in the family Cactaceae. Dragon fruit is cultivated in Peru, Mexico, South Asia, Southeast Asia, East Asia, the United States, the Caribbean, Australia, Mesoamerica and throughout tropical and subtropical regions of the world.",
    isFavourited: true,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicfruits%2Fdragon-fly.jpg?alt=media&token=7116be22-72fd-4fdc-b318-bc3ab1856580",
    price: "160",
    score: 4,
    nutritions: [
      "Potassium",
      "Calcium",
      "Magnesium",
      "Vitamin C",
      "Dietary fiber",
    ],
  );

  var item5 = ItemProduct(
    name: "Mango",
    category: CategoryItem.Fruits,
    id: count_id++,
    detailProduct:
    "A mango is an edible stone fruit produced by the tropical tree Mangifera indica which is believed to have originated from the region between northwestern Myanmar, Bangladesh, and northeastern India. M. indica has been cultivated in South and Southeast Asia since ancient times resulting in two types of modern mango cultivars: the Indian type and the Southeast Asian type. Other species in the genus Mangifera also produce edible fruits that are also called mangoes, the majority of which are found in the Malesian ecoregion.",
    isFavourited: true,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicfruits%2Fmango.jpg?alt=media&token=fe0ad090-0a18-4faf-a126-e91f74f8bd0f",
    price: "220",
    score: 5,
    nutritions: [
      "100% yellow",
    ],
  );

  var item6 = ItemProduct(
    name: "Peaches",
    category: CategoryItem.Fruits,
    id: count_id++,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicfruits%2Fpeaches.jpg?alt=media&token=c84ef1ff-56d9-4958-a094-d9d87148ace3",
    price: "199",
    score: 3,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item7 = ItemProduct(
    name: "Muilti Fruits Pack",
    id: count_id++,
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: true,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedfruitpack%2F1.jpg?alt=media&token=fa90b0ce-307e-4ab1-ba1c-fd5114bd0847",
    price: "200",
    score: 3,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item8 = ItemProduct(
    name: "Paper Fruits Pack",
    id: count_id++,
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedfruitpack%2F2.jpg?alt=media&token=50ccc03c-44be-4afb-81eb-4dcccc93b58a",
    price: "230",
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item9 = ItemProduct(
    name: "Tropicana Fruits",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedfruitpack%2F3.jpg?alt=media&token=f5a82033-5064-4222-bac9-135eac3bede2",
    price: "355",
    id: count_id++,
    score: 4,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item10 = ItemProduct(
    name: "Muilti Fruits Pack 2",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedfruitpack%2F4.jpg?alt=media&token=71d943a6-f426-443c-aab9-99f9b5b5cebf",
    price: "399",
    score: 5,
    id: count_id++,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item12 = ItemProduct(
    name: "Apricots",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fstonefruit%2F1.jpg?alt=media&token=1508085c-a3aa-447c-82ad-77d8b74335d2",
    price: "180",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item11 = ItemProduct(
    name: "Nectarines",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fstonefruit%2F5.jpg?alt=media&token=831c490e-ebbc-47c0-afa1-67974501021f",
    price: "250",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item13 = ItemProduct(
    name: "Green Apples",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fstonefruit%2F4.jpg?alt=media&token=5bef6856-18a3-4b15-892e-82f8b5ba8b3d",
    price: "210",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item14 = ItemProduct(
    name: "Blueberry",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fstonefruit%2F3.jpg?alt=media&token=f05ae715-2b4f-42c7-91b6-805a972f7bd2",
    price: "170",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item15 = ItemProduct(
    name: "Apples",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fstonefruit%2F2.jpg?alt=media&token=1b33fe61-e90d-4a60-96d5-4fd0ba1a4878",
    price: "220",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item16 = ItemProduct(
    name: "Green Melons",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmelons%2F1.jpeg?alt=media&token=7e0bcac4-de4a-4c23-83a5-01d47616ce63",
    price: "150",
    id: count_id++,
    score: 3,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item17 = ItemProduct(
    name: "Yellow Melons",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmelons%2F2.jpg?alt=media&token=6c230685-323c-4bf6-b904-ad6ad9b1fe8d",
    price: "160",
    id: count_id++,
    score: 4,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item18 = ItemProduct(
    name: "Square Melons",
    category: CategoryItem.Fruits,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmelons%2F3.jpg?alt=media&token=7caf5c09-c7ba-40e5-b3fb-4c926d381e0a",
    price: "230",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item19 = ItemProduct(
    name: "Blue Melons",
    category: CategoryItem.Fruits,
    id: count_id++,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmelons%2F4.jpg?alt=media&token=61accc0f-0f4f-40f9-a356-bf36a77b9626",
    price: "210",
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

///////////////////
  var item20 = ItemProduct(
    name: "Broccoli",
    category: CategoryItem.Vegetables,
    id: count_id++,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: true,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicvegetables%2F0.jpg?alt=media&token=00e5719a-f07b-494f-81da-b2fb27a97aea",
    price: "210",
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );
  var item21 = ItemProduct(
    name: "Brinjels",
    category: CategoryItem.Vegetables,
    id: count_id++,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: true,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicvegetables%2F3.jpg?alt=media&token=6f86b672-22a3-4a34-865d-3c4dbd5f77c3",
    price: "210",
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item22 = ItemProduct(
    name: "Corriander",
    category: CategoryItem.Vegetables,
    id: count_id++,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicvegetables%2F4.jpg?alt=media&token=24f0dae9-800a-4fb7-8f4d-9dfdb79917e7",
    price: "210",
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item23 = ItemProduct(
    name: "Cabbage",
    id: count_id++,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "assets/images/organicvegetables/1.jpeg",
    price: "210",
    score: 5,
    category: CategoryItem.Vegetables,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item24 = ItemProduct(
    name: "Water spinach",
    category: CategoryItem.Vegetables,
    id: count_id++,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Forganicvegetables%2F2.jpg?alt=media&token=95cef4e6-1f30-4133-bef6-366a44eaec6d",
    price: "210",
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item25 = ItemProduct(
    name: "Muitli Vegetables",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: true,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedvegetablepack%2F1.jpg?alt=media&token=f2f63605-cd49-4cda-abdb-0b5f2c14911b",
    price: "266",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item26 = ItemProduct(
    name: "Paper Vegetables",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: true,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedvegetablepack%2F7.jpg?alt=media&token=1eeb88e1-259d-4505-8b20-3f5cf6b956c7",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item27 = ItemProduct(
    name: "Tropicana Vege..",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedvegetablepack%2F2.jpg?alt=media&token=339962dd-c166-4cfd-a45f-db062e60a31f",
    price: "233",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item28 = ItemProduct(
    name: "Mixed Vegeta..",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedvegetablepack%2F3.jpg?alt=media&token=b619b225-b351-41aa-bcab-f680f47e3d67",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item29 = ItemProduct(
    name: "Mixed Veget..",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedvegetablepack%2F4.jpg?alt=media&token=9a099de3-59aa-4433-8fbc-39683cb102c9",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item30 = ItemProduct(
    name: "Mixed Vege..",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Fmixedvegetablepack%2F5.jpg?alt=media&token=3de90b71-9408-4365-ac6e-7badaba94ff4",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item31 = ItemProduct(
    name: "Onion",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Falliumvegetables%2F1.jpg?alt=media&token=e5cb08e4-821d-4d6e-bbe9-2ea26584acc4",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item32 = ItemProduct(
    name: "Garlic",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Falliumvegetables%2F4.jpg?alt=media&token=1b415b2d-e239-4750-9324-0b91c533b31a",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item33 = ItemProduct(
    name: "Ginger",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Falliumvegetables%2F6.jpg?alt=media&token=0463bb6a-c21d-4608-81f4-7b0ea112b603",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item34 = ItemProduct(
    name: "Carrots",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Frootvegetables%2F1.jpg?alt=media&token=b4803eac-4129-4a1a-9b7b-b0f739b56369",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item35 = ItemProduct(
    name: "White Carrot??",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Frootvegetables%2F2.jpg?alt=media&token=e7a66dd9-0e33-47f6-9833-6d96ed374cc7",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

  var item36 = ItemProduct(
    name: "Red Carrot??",
    category: CategoryItem.Vegetables,
    detailProduct:
    "The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines.",
    isFavourited: false,
    imagePath: "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/fruit%20images%2Frootvegetables%2F4.jpg?alt=media&token=90188a2d-a973-4374-b09b-c4f684b02bc2",
    price: "216",
    id: count_id++,
    score: 5,
    nutritions: [
      "Vitamin B6",
      "Choline",
      "Vitamin C",
      "Vitamin E",
      "Vitamin K",
      "Calcium",
      "Iron",
      "Magnesium",
      "Manganese",
      "Phosphorus",
      "Potassium",
      "Sodium",
      "Zinc",
    ],
  );

///////////////////

///////////////////////////////////init list items///////////////////////////////

  itemss.addAll([
    item0,
    item1,
    item2,
    item4,
    item3,
    item5,
    item6,
    item7,
    item8,
    item9,
    item10,
    item11,
    item12,
    item13,
    item14,
    item15,
    item16,
    item17,
    item18,
    item19,
    item20,
    item21,
    item22,
    item23,
    item24,
    item25,
    item26,
    item27,
    item28,
    item29,
    item30,
    item31,
    item32,
    item33,
    item34,
    item35,
    item36,
  ]);

  //fruits
  // itemProductFruitsLists.addAll(items.sublist(0, 7));
  // itemProductFruitsLists1.addAll(items.sublist(7, 11));
  // itemProductFruitsLists2.addAll(items.sublist(11, 16));
  // itemProductFruitsLists3.addAll(items.sublist(16, 20));
  // //vegetables
  // itemProductVegetablesLists.addAll(items.sublist(20, 25));
  // itemProductVegetablesLists1.addAll(items.sublist(25, 31));
  // itemProductVegetablesLists2.addAll(items.sublist(31, 34));
  // itemProductVegetablesLists3.addAll(items.sublist(34, 37));
  //dry fruits

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
