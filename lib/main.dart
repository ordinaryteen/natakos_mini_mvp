import 'package:flutter/material.dart';

void main() {
  runApp(const NatakosApp());
}

class NatakosApp extends StatelessWidget {
  const NatakosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Natakos Ledger'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const TransactionList(), // Widget utama kita
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data berdasarkan COA Natakos
    final List<Map<String, String>> dummyTransactions = [
      {'code': '1111', 'name': 'Kas di Tangan Juragan', 'amount': '+ Rp 5.000.000'},
      {'code': '4112', 'name': 'Sewa Kamar Bulanan', 'amount': '+ Rp 1.500.000'},
      {'code': '1111', 'name': 'Kas di Tangan Juragan', 'amount': '- Rp 200.000 (Listrik)'},
    ];

    return ListView.builder(
      itemCount: dummyTransactions.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: Text(dummyTransactions[index]['code']!.substring(0, 2)),
            ),
            title: Text(dummyTransactions[index]['name']!),
            trailing: Text(
              dummyTransactions[index]['amount']!,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
        );
      },
    );
  }
}