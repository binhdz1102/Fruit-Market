import 'package:hive/hive.dart';
part 'category_items.g.dart';

//su dung Hive luu tru (chua su dung)
@HiveType(typeId: 1)
enum CategoryItem{
  @HiveField(0)
  Vegetables,
  @HiveField(1)
  Fruits,
  @HiveField(2)
  Organic_Fruits
}