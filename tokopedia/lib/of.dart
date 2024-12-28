import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Envelope UI',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Envelope UI'),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: EnvelopeScreen(),
      ),
    );
  }
}

class EnvelopeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          SizedBox(height: 10),
          CategoryTabs(),
          SizedBox(height: 10),
          PromotionBanner(),
          SizedBox(height: 10),
          ProductGrid(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                hintText: 'Cari di Serbu Official...',
              ),
            ),
          ),
          SizedBox(width: 10),
          Icon(Icons.mail),
          SizedBox(width: 10),
          Icon(Icons.notifications),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart),
          SizedBox(width: 10),
          Icon(Icons.menu),
        ],
      ),
    );
  }
}

class CategoryTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CategoryTab(title: 'Brand Day'),
          CategoryTab(title: 'Fashion'),
          CategoryTab(title: 'Kuliner & Groceries'),
        ],
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String title;

  CategoryTab({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class PromotionBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[50],
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Brand Day',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Belanja Rp299rb* Gratis 1 Botol Minum',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        ProductCard(
          discount: 76,
          imageUrl: 'images/1.png',
          originalPrice: 499000,
          salePrice: 119999,
          location: 'Kab. Bekasi',
        ),
        ProductCard(
          discount: 69,
          imageUrl: 'images/2.png',
          originalPrice: 120000,
          salePrice: 37000,
          location: 'Kab. Bekasi',
        ),
        ProductCard(
          discount: 84,
          imageUrl: 'images/3.png',
          originalPrice: 120000,
          salePrice: 99000,
          location: 'Kab. Bekasi',
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final int discount;
  final String imageUrl;
  final int originalPrice;
  final int salePrice;
  final String location;

  ProductCard({
    required this.discount,
    required this.imageUrl,
    required this.originalPrice,
    required this.salePrice,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(imageUrl),
          Text(
            '$discount% OFF',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Rp$salePrice',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Rp$originalPrice',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
            ),
          ),
          Text(location),
        ],
      ),
    );
  }
}
