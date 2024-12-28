import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Amplop(),
    );
  }
}

class Amplop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Inbox'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          constraints:
              BoxConstraints(maxWidth: 600), // Set the maximum width here
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Chat Penjual'),
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Chat Pembeli'),
                subtitle: Text('samuel bryant'),
              ),
              ListTile(
                leading: Icon(Icons.chat_bubble_outline),
                title: Text('Diskusi Produk'),
              ),
              ListTile(
                leading: Icon(Icons.star_border),
                title: Text('Ulasan'),
              ),
              SizedBox(height: 16),
              Image.asset('images/prom.png'),
              SizedBox(height: 16),
              Text(
                'Rekomendasi Untuk Anda',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              // Kartu pertama
              Card(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/gt.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Schecter Synyster Gates whites',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Rp 12.179.100',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Rp 11.899.000',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.star, size: 14, color: Colors.amber),
                                SizedBox(width: 4),
                                Text('5.0'),
                                SizedBox(width: 8),
                                Text('100+ terjual'),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text('Jakarta Pusar'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Kartu kedua
              Card(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/como.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'JERSEY BAJU BOLA COMO AWAY 2024 FULLPATCH + NAMESET',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Rp959.999',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.star, size: 14, color: Colors.amber),
                                SizedBox(width: 4),
                                Text('4.9'),
                                SizedBox(width: 8),
                                Text('290 terjual'),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text('Jakarta Utara'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Kartu ketiga
              Card(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/akm.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mamat Gunshop',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Rp959.999',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.star, size: 14, color: Colors.amber),
                                SizedBox(width: 4),
                                Text('4.9'),
                                SizedBox(width: 8),
                                Text('290 terjual'),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text('Jakarta Utara'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
