import 'package:flutter/material.dart';
import 'package:plant_shop/bill.dart';
import 'package:plant_shop/cart_page.dart';
import 'package:plant_shop/history_page.dart'; 
import 'package:plant_shop/order_list_page.dart';
import 'package:plant_shop/plant_item.dart';
import 'package:plant_shop/plant_list.dart';

class PlantShopHome extends StatefulWidget {
  @override
  _PlantShopHomeState createState() => _PlantShopHomeState();
}

class _PlantShopHomeState extends State<PlantShopHome> {
  int _selectedIndex = 0;
  List<PlantItem> _cartItems = []; // List to store items in the cart

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _addToCart(PlantItem item) {
    setState(() {
      _cartItems.add(item);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${item.title} ໄດ້ເພີ່ມລົງໃນກະຕ່າ!'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return PlantList(onAddToCart: _addToCart);
      case 1:
        return OrderListPage(
          bills: [
            Bill(
              items: [
                PlantItem(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
                  title: 'ດອກດາວເຮືອງ',
                  description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
                  price: '100.000 ₭',
                  onAddToCart: (plantItem) {},
                ),
                PlantItem(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
                  title: 'ດອກດາວເຮືອງ',
                  description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
                  price: '100.000 ₭',
                  onAddToCart: (plantItem) {},
                ),
              ],
              totalPrice: 200.000,
              status: 'paid_not_arrived',
            ),
            Bill(
              items: [
                PlantItem(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
                  title: 'ດອກດາວເຮືອງ',
                  description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
                  price: '100.000 ₭',
                  onAddToCart: (plantItem) {},
                ),
                 PlantItem(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
                  title: 'ດອກດາວເຮືອງ',
                  description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
                  price: '100.000 ₭',
                  onAddToCart: (plantItem) {},
                ),
              ],
              totalPrice: 200.000,
              status: 'paid_not_arrived',
            ),
          ],
        );
      case 2:
        return HistoryPage(
          bills: [
            Bill(
              items: [
                 PlantItem(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
                  title: 'ດອກດາວເຮືອງ',
                  description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
                  price: '100.000 ₭',
                  onAddToCart: (plantItem) {},
                ),
                 PlantItem(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
                  title: 'ດອກດາວເຮືອງ',
                  description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
                  price: '100.000 ₭',
                  onAddToCart: (plantItem) {},
                ),
              ],
              totalPrice: 200.000,
              status: 'paid_not_arrived',
            ),
            Bill(
              items: [
                 PlantItem(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
                  title: 'ດອກດາວເຮືອງ',
                  description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
                  price: '100.000 ₭',
                  onAddToCart: (plantItem) {},
                ),
                 PlantItem(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
                  title: 'ດອກດາວເຮືອງ',
                  description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
                  price: '100.000 ₭',
                  onAddToCart: (plantItem) {},
                ),
              ],
              totalPrice: 200.000,
              status: 'paid_not_arrived',
            ),
          ],
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ຮ້ານດອກໄມ້ທົ່ງກາງ', style: TextStyle(fontFamily: 'Sarabun')),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28),
            label: 'ໜ້າຫຼັກ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category, size: 28),
            label: 'ລາຍການສັ່ງຊື້',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, size: 28),
            label: 'ປະຫວັດການຊື້',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(cartItems: _cartItems),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(Icons.shopping_cart, size: 28),
            if (_cartItems.isNotEmpty)
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    '${_cartItems.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
