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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainNavigation(), // Kita pindah ke class baru buat handle nav
    );
  }
}

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natakos Navigation'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => print('Notif diklik'),
          )
        ],
      ),

      drawer: const Drawer(
        child: Center(child: Text('Menu Samping')),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => print('Tambah Transaksi'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.house, size: 50),
              Icon(Icons.person, size: 50),
            ],
          ),
          SizedBox(height: 30),
          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.abc, size: 12),
              Icon(Icons.abc, size: 12),
              Icon(Icons.abc, size: 12),
              Icon(Icons.abc, size: 12),
            ],
          ),
          SizedBox(height: 30), // Spacer ringan untuk Ryzen 3
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 100,
              decoration: BoxDecoration( // "CSS" nya Container
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(child: Text('Box Info Kos')),
            ),
          ),
          SizedBox(height: 40,),

          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text('Transaksi Kamar ${index + 101}'),
                    subtitle: const Text('IDR 1.500.000'),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                        'Live Notification',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        onTap: (index) {
          print('Pindah ke tab index: $index');
        },
      ),
    );
  }
}