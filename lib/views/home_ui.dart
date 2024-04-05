// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:dti_mukrata_app/views/about_ui.dart';
import 'package:dti_mukrata_app/views/calculate_pay_bill_ui.dart';
import 'package:dti_mukrata_app/views/menu_shop_ui.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<Widget> _showView = [ 
    CalculatePayBillUI(),
    MenuShopUI(),
    AboutUI()
  ];

  int _currentIndex = 1;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Tech SAU BUFFET',
          style: TextStyle(color: Color.fromARGB(255, 0, 255, 170)),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.orange,
        activeColor: const Color.fromARGB(255, 255, 255, 255),
        initialActiveIndex: 2,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          TabItem(
           icon: Icon( 
              Icons.attach_money,
              color: Colors.blue,
            ),
            title: 'คิดเงิน',

          ),
          TabItem(
            icon: Icon( 
              Icons.home,
              color: Colors.blue,
            ),
            title: 'Home',

          ),
          TabItem(
            icon: Icon( 
              Icons.star,
              color: Colors.blue,
            ),
            title: 'เกี่ยวกับ',

          ),
        ],
        ),
    );
  }
}
