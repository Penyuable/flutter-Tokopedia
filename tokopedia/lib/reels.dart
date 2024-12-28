import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Reels(),
        ),
      ),
    );
  }
}

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/reels.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(
          child: Image.asset(
            'images/znr.png',
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 28,
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Row(
            children: [
              Icon(
                Icons.notifications,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(width: 16),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 80,
          left: 16,
          child: Column(
            children: [
              Icon(
                Icons.home,
                color: Colors.white,
                size: 32,
              ),
              SizedBox(height: 16),
              Icon(
                Icons.rss_feed,
                color: Colors.white,
                size: 32,
              ),
              SizedBox(height: 16),
              Icon(
                Icons.store,
                color: Colors.white,
                size: 32,
              ),
              SizedBox(height: 16),
              Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 32,
              ),
              SizedBox(height: 16),
              Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 32,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 80,
          right: 16,
          child: Column(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(height: 16),
              Icon(
                Icons.comment,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(height: 16),
              Icon(
                Icons.share,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(height: 16),
              Icon(
                Icons.live_tv,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.black.withOpacity(0.6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 32,
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 32,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.store,
                      color: Colors.white,
                      size: 32,
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 32,
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 32,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
