
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
      theme: ThemeData(primarySwatch: Colors.green),
      home: const OrderScreen(),
    );
  }
}

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final name = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final medicines = <TextEditingController>[TextEditingController()];

  void addMedicine() {
    setState(() {
      medicines.add(TextEditingController());
    });
  }

  void submit() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Order saved for JSONS Pharmacy Oghi')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JSONS Pharmacy Oghi')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(controller: name, decoration: const InputDecoration(labelText: 'Customer Name')),
          TextField(controller: phone, decoration: const InputDecoration(labelText: 'Contact Number')),
          TextField(controller: address, decoration: const InputDecoration(labelText: 'Address')),
          const SizedBox(height: 10),
          const Text('Medicines'),
          ...medicines.map((m) => TextField(
            controller: m,
            decoration: const InputDecoration(labelText: 'Medicine name and quantity'),
          )),
          TextButton(onPressed: addMedicine, child: const Text('+ Add Medicine')),
          ElevatedButton(onPressed: submit, child: const Text('Submit Order')),
        ],
      ),
    );
  }
}
