import 'package:plant_shop/plant_item.dart';

class Bill {
  final List<PlantItem> items;
  final double totalPrice;
  final String status;

  Bill({required this.items, required this.totalPrice, required this.status});
}
