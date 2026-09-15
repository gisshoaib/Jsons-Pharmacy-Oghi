import 'package:flutter/material.dart';

void main() {
  runApp(const JsonsPharmacyApp());
}

class JsonsPharmacyApp extends StatelessWidget {
  const JsonsPharmacyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JSONS Pharmacy Oghi',
      home: const OrderPage(),
    );
  }
}

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JSONS Pharmacy Oghi')),
      body: const Center(
        child: Text('Customer Order App'),
      ),
    );
  }
}
