import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyShoppeApp extends StatefulWidget {
  const MyShoppeApp({super.key});

  @override
  State<MyShoppeApp> createState() => _MyShoppeAppState();
}

class _MyShoppeAppState extends State<MyShoppeApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    hintText: 'Do you looking for something?',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.grey[400],
              ),
              onPressed: () {
                // Placeholder untuk aksi pesan
              },
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey[400],
              ),
              onPressed: () {
                // Placeholder untuk aksi keranjang
              },
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.transparent),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 60,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 12),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildTopItem(Icons.qr_code_2_outlined, 'Scan here'),
                        _buildTopItem(Icons.money_off, 'Rp0'),
                        _buildTopItem(Icons.money_rounded, 'Klaim money'),
                        _buildTopItem(
                            Icons.transfer_within_a_station, 'Transfer'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 12),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                      children: [
                        Builder(builder: (context) {
                          List menuItems = [
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/18063/18063573.png",
                              "label": "Pulsa &\nTagihan"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/6124/6124997.png",
                              "label": "Shopee \nPlus"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/4425/4425250.png",
                              "label": "Barokah &\nPilih lokal"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/2780/2780137.png",
                              "label": "ShopeePay \nSekitarmu"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/6599/6599879.png",
                              "label": "Terserah Di \nShopee"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/2596/2596697.png",
                              "label": "Shopee \nFood"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/2214/2214024.png",
                              "label": "Shopee \nGames"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/3527/3527644.png",
                              "label": "Shopee \nMall"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/3527/3527644.png",
                              "label": "Spay \nLater"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/3527/3527644.png",
                              "label": "View \nAll"
                            },
                          ];
                          return GridView.builder(
                            padding: const EdgeInsets.all(8),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              childAspectRatio: 1,
                              crossAxisSpacing: 6,
                              mainAxisSpacing: 6,
                            ),
                            itemCount: menuItems.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              var item = menuItems[index];
                              return Column(
                                children: [
                                  Image.network(
                                    item['image'],
                                    width: 32,
                                    height: 32,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    item['label'],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.3,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      enableInfiniteScroll: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                    items: [
                      'https://static.vecteezy.com/ti/gratis-vektor/p3/5724848-rod-live-line-stream-sign-streaming-tv-banner-online-broadcast-news-show-channel-tv-symbol-of-livestream-isolated-illustration-vector.jpg',
                      'https://static.vecteezy.com/ti/gratis-vektor/p3/5724848-rod-live-line-stream-sign-streaming-tv-banner-online-broadcast-news-show-channel-tv-symbol-of-livestream-isolated-illustration-vector.jpg',
                      'https://static.vecteezy.com/ti/gratis-vektor/p3/5724848-rod-live-line-stream-sign-streaming-tv-banner-online-broadcast-news-show-channel-tv-symbol-of-livestream-isolated-illustration-vector.jpg',
                    ].map((imageUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildTopItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.orange),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
