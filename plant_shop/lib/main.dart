import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/cart_page.dart';
import 'package:plant_shop/plant_shop_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ຮ້ານດອກໄມ້ທົ່ງກາງ',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.sarabunTextTheme(),
      ),
      home: PlantShopHome(),
    );
  }
}
