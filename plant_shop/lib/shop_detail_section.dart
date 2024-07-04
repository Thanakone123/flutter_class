import 'package:flutter/material.dart';
import 'package:plant_shop/plant_item.dart';

class ShopDetailSection extends StatelessWidget {
  final String title;
  final List<PlantItem> plantItems;

  const ShopDetailSection({
    Key? key,
    required this.title,
    required this.plantItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Column(
            children: plantItems,
          ),
        ],
      ),
    );
  }
}
