// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemProductAdapter extends TypeAdapter<ItemProduct> {
  @override
  final int typeId = 0;

  @override
  ItemProduct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemProduct(
      imagePath: fields[1] as String,
      name: fields[2] as String,
      detailProduct: fields[3] as String,
      nutritions: (fields[4] as List).cast<String>(),
      price: fields[5] as String,
      id: fields[9] as int,
      category: fields[6] as CategoryItem,
      score: fields[7] as int,
      isFavourited: fields[8] as bool,
    )
      .._numberFavouriteSelected = fields[10] as int
      .._numberShoppingCartSelected = fields[11] as int;
  }

  @override
  void write(BinaryWriter writer, ItemProduct obj) {
    writer
      ..writeByte(11)
      ..writeByte(1)
      ..write(obj.imagePath)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.detailProduct)
      ..writeByte(4)
      ..write(obj.nutritions)
      ..writeByte(5)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.category)
      ..writeByte(7)
      ..write(obj.score)
      ..writeByte(8)
      ..write(obj.isFavourited)
      ..writeByte(9)
      ..write(obj.id)
      ..writeByte(10)
      ..write(obj._numberFavouriteSelected)
      ..writeByte(11)
      ..write(obj._numberShoppingCartSelected);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
