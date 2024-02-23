import 'package:flutter/material.dart';
import 'package:toku_application/components/item_info.dart';
import 'package:toku_application/models/item.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
    required this.item,
    required this.color,
  });
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(item.image!)),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}
