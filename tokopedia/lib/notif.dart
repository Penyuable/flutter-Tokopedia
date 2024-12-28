import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Notif(),
    );
  }
}

class Notif extends StatefulWidget {
  const Notif({super.key});

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 1),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    height: 34,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      controller: _searchController,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.1, horizontal: 10.0),
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            children: [
              // Top tab bar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    TabItem(label: 'Transaksi'),
                    TabItem(label: 'Promo'),
                    TabItem(label: 'Info'),
                    TabItem(label: 'Feed'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CategoryButton(label: 'Transaksi berlangsung'),
                    CategoryButton(label: 'Menunggu Pembayaran'),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    final notification = notifications[index];
                    return NotificationCard(notification: notification);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(label),
    );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(label),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notification});

  final Notification notification;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      color: const Color(
          0xFFEDF7ED), // Set the background color similar to the screenshot
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              notification.iconPath,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notification.title,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5.0),
                  Text(notification.message),
                  const SizedBox(height: 5.0),
                  Text(notification.time,
                      style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Notification {
  final String title;
  final String message;
  final String time;
  final String iconPath;

  Notification(
      {required this.title,
      required this.message,
      required this.time,
      required this.iconPath});
}

List<Notification> notifications = [
  Notification(
      title: 'Pembayaran',
      message: 'Kamu dapat 1 GoPay Coins!',
      time: '4 jam',
      iconPath: 'images/duit.png'),
  Notification(
      title: 'Promo',
      message: 'BARU! Peeling Solution Serum!',
      time: '10 jam',
      iconPath: 'images/prm.png'),
  Notification(
      title: 'Promo',
      message: 'Hari Terakhir Fashion 7.7',
      time: '12 jam',
      iconPath: 'images/prm.png'),
  Notification(
      title: 'Pembayaran',
      message: 'Kamu dapat 1 GoPay Coins!',
      time: '2 hari lalu',
      iconPath: 'images/duit.png'),
  Notification(
      title: 'Pembayaran',
      message: 'Kamu dapat 1 GoPay Coins!',
      time: '3 hari lalu',
      iconPath: 'images/duit.png'),
  Notification(
      title: 'Info',
      message: 'Ulasanmu dibalas oleh penjual, lho!',
      time: '4 hari lalu',
      iconPath: 'images/not.png'),
];

class EnvelopeScreen extends StatelessWidget {
  const EnvelopeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Envelope')),
      body: const Center(child: Text('Envelope Screen')),
    );
  }
}

class NotifScreen extends StatelessWidget {
  const NotifScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notif')),
      body: const Center(child: Text('Notif Screen')),
    );
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: const Center(child: Text('Cart Screen')),
    );
  }
}

class UlasScreen extends StatelessWidget {
  const UlasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ulas')),
      body: const Center(child: Text('Ulas Screen')),
    );
  }
}

class BeliScreen extends StatelessWidget {
  const BeliScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beli')),
      body: const Center(child: Text('Beli Screen')),
    );
  }
}
