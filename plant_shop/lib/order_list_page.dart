import 'package:flutter/material.dart';
import 'package:plant_shop/bill.dart'; // Import the Bill model
import 'package:plant_shop/plant_item.dart';

class OrderListPage extends StatelessWidget {
  final List<Bill> bills;

  const OrderListPage({Key? key, required this.bills}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Bill> filteredBills =
        bills.where((bill) => bill.status == 'paid_not_arrived').toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('ລາຍການສັ່ງຊື້'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: filteredBills.isEmpty
          ? Center(
              child: Text(
                'ບໍ່ມີລາຍການບິນທີ່ກຳລັງສັ່ງຊື້',
                style: TextStyle(color: Colors.black),
              ),
            )
          : ListView.builder(
              itemCount: filteredBills.length,
              itemBuilder: (context, index) {
                Bill bill = filteredBills[index];
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.all(8),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text(
                            'ບິນທີ ${index + 1}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: bill.items.length,
                          itemBuilder: (context, itemIndex) {
                            PlantItem item = bill.items[itemIndex];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      item.imageUrl,
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.title,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '${item.price}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.green,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          item.description,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[600],
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ລາຄາລວມ:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '200.000 ₭', // Format total price
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
