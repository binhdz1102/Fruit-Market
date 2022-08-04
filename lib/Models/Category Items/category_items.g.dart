// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_items.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryItemAdapter extends TypeAdapter<CategoryItem> {
  @override
  final int typeId = 1;

  @override
  CategoryItem read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CategoryItem.Vegetables;
      case 1:
        return CategoryItem.Fruits;
      case 2:
        return CategoryItem.Organic_Fruits;
      default:
        return CategoryItem.Vegetables;
    }
  }

  @override
  void write(BinaryWriter writer, CategoryItem obj) {
    switch (obj) {
      case CategoryItem.Vegetables:
        writer.writeByte(0);
        break;
      case CategoryItem.Fruits:
        writer.writeByte(1);
        break;
      case CategoryItem.Organic_Fruits:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
