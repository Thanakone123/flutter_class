import 'package:flutter/material.dart';
import 'package:plant_shop/shop_detail_section.dart';
import 'package:plant_shop/plant_item.dart';

class PlantList extends StatelessWidget {
  final Function(PlantItem) onAddToCart;

  const PlantList({Key? key, required this.onAddToCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: <Widget>[
        ShopDetailSection(
          title: 'ລາຍການພືດພັນໃນຮ້ານ',
          plantItems: [
            PlantItem(
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
              title: 'ດອກດາວເຮືອງ',
              description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
              price: '100.000 ₭',
              onAddToCart: onAddToCart,
            ),
            PlantItem(
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
              title: 'ດອກດາວເຮືອງ',
              description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
              price: '100.000 ₭',
              onAddToCart: onAddToCart,
            ),
            PlantItem(
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
              title: 'ດອກດາວເຮືອງ',
              description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
              price: '100.000 ₭',
              onAddToCart: onAddToCart,
            ),
          PlantItem(
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaKXvwAGUiGkZI9w7rbpACE5idCpCuQnioA&s',
              title: 'ດອກດາວເຮືອງ',
              description: 'ດອກດາວເຮືອງເປັນພືດອອກດອກທີ່ມີຊື່ເປັນກຽດ ເນື່ອງຈາກວ່າມັນມີຄວາມຄ້າຍຄືກັນກັບຄໍາວ່າ "ຄວາມຈະເລີນຮຸ່ງເຮືອງ" ແລະ ສີເຫຼືອງເປັນຕົວແທນຂອງເງິນ ສ່ວນຫຼາຍມັກປູກໃສ່ກະຖາງ ແລະ ວາງໄວ້ໜ້າເຮືອນ. ເພາະນອກຈາກຄວາມງາມ ມັນຍັງຊ່ວຍຂັບໄລ່ແມງໄມ້ແລະສັດທີ່ເປັນພິດເຊັ່ນງູ.',
              price: '100.000 ₭',
              onAddToCart: onAddToCart,
            ),
          ],
        ),
      ],
    );
  }
}
