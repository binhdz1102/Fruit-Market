import '../Models/Category Items/category_items.dart';
import '../Models/item_product.dart';
import '../Models/item_product_list.dart';

int count_id = 0;

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

//dry fruits

void initdata() {
///////////////////////////////////init items/////////////////////////////////////////
  var item0 = ItemProduct(
    id: count_id++,
    category: CategoryItem.Fruits,
    name: "Strawberry",
    detailProduct:
        "The garden strawberry (or simply strawberry, Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates. Artificial strawberry flavorings and aromas are also widely used in products such as candy, soap, lip gloss, perfume, and many others.",
    isFavourited: false,
    imagePath:
        "assets/images/organicfruits/anton-darius-FCrgmqqvl-w-unsplash.png",
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
        "assets/images/organicfruits/haris-habul-a7CeloEQhLI-unsplash.png",
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
    imagePath: "assets/images/organicfruits/cherry.png",
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
    imagePath: "assets/images/organicfruits/chrome-chrome.jpg",
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
    imagePath: "assets/images/organicfruits/dragon-fly.jpg",
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
    imagePath: "assets/images/organicfruits/mango.jpg",
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
    imagePath: "assets/images/organicfruits/peaches.jpg",
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
    imagePath: "assets/images/mixedfruitpack/1.jpg",
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
    imagePath: "assets/images/mixedfruitpack/2.jpg",
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
    imagePath: "assets/images/mixedfruitpack/3.jpg",
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
    imagePath: "assets/images/mixedfruitpack/4.jpg",
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
    imagePath: "assets/images/stonefruit/1.jpg",
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
    imagePath: "assets/images/stonefruit/5.jpg",
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
    imagePath: "assets/images/stonefruit/4.jpg",
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
    imagePath: "assets/images/stonefruit/3.jpg",
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
    imagePath: "assets/images/stonefruit/2.jpg",
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
    imagePath: "assets/images/melons/1.jpeg",
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
    imagePath: "assets/images/melons/2.jpg",
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
    imagePath: "assets/images/melons/3.jpg",
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
    imagePath: "assets/images/melons/4.jpg",
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
    imagePath: "assets/images/organicvegetables/0.jpg",
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
    imagePath: "assets/images/organicvegetables/3.jpg",
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
    imagePath: "assets/images/organicvegetables/4.jpg",
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
    imagePath: "assets/images/organicvegetables/2.jpg",
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
    imagePath: "assets/images/mixedvegetablepack/1.jpg",
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
    imagePath: "assets/images/mixedvegetablepack/7.jpg",
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
    imagePath: "assets/images/mixedvegetablepack/2.jpg",
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
    imagePath: "assets/images/mixedvegetablepack/3.jpg",
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
    imagePath: "assets/images/mixedvegetablepack/4.jpg",
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
    imagePath: "assets/images/mixedvegetablepack/5.jpg",
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
    imagePath: "assets/images/alliumvegetables/1.jpg",
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
    imagePath: "assets/images/alliumvegetables/4.jpg",
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
    imagePath: "assets/images/alliumvegetables/6.jpg",
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
    imagePath: "assets/images/rootvegetables/1.jpg",
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
    imagePath: "assets/images/rootvegetables/2.jpg",
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
    imagePath: "assets/images/rootvegetables/4.jpg",
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

  items.addAll([
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
  itemProductFruitsLists.addAll(items.sublist(0, 7));
  itemProductFruitsLists1.addAll(items.sublist(7, 11));
  itemProductFruitsLists2.addAll(items.sublist(11, 16));
  itemProductFruitsLists3.addAll(items.sublist(16, 20));
  //vegetables
  itemProductVegetablesLists.addAll(items.sublist(20, 25));
  itemProductVegetablesLists1.addAll(items.sublist(25, 31));
  itemProductVegetablesLists2.addAll(items.sublist(31, 34));
  itemProductVegetablesLists3.addAll(items.sublist(34, 37));
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
