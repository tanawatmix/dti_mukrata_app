import 'package:flutter/material.dart';
 
class AboutUI extends StatefulWidget {
  const AboutUI({super.key});
 
  @override
  State<AboutUI> createState() => _AboutUIState();
}
 
class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/saulogo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.03,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'แอปพลิเคชันร้านหมูกะทะ\nเพื่อคนไทย\nโดยเด็กไทย\nสนใจแอปพลิเคชันติดต่อ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.02,
                color: Colors.grey[700],
              ),
            ),
            Text(
              'เด็กไอที SAU',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.03,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Image.asset(
              'assets/images/sauqr.png',
              width: MediaQuery.of(context).size.width * 0.25,
            ),
          ],
        ),
      ),
    );
  }
}