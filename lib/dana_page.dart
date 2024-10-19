import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyDanaApp extends StatefulWidget {
  const MyDanaApp({super.key});

  @override
  State<MyDanaApp> createState() => _MyDanaAppState();
}

class _MyDanaAppState extends State<MyDanaApp> {
  final List<String> imgList = [
    'https://plus.unsplash.com/premium_photo-1672082518029-8619a2c1e9dd?q=80&w=3432&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1526178613552-2b45c6c302f0?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];

  // Menambahkan state untuk bottom navigation
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Icon(
              Icons.wallet,
              size: 24,
              color: Colors.white,
            ),
            SizedBox(width: 4),
            Text("Rp", style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(width: 4),
            Text("100.000.000",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.email_outlined,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 60,
              child: Column(
                children: [
                  Container(
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
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Colors.grey[300]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.qr_code_scanner,
                              size: 32,
                              color: Colors.white,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Scan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.add,
                              size: 32,
                              color: Colors.white,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Topup',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.remove,
                              size: 32,
                              color: Colors.white,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Request',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.send,
                              size: 32,
                              color: Colors.white,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Send',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
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
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1526178613552-2b45c6c302f0?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Diskon 12.12",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Diskon s/d 100%',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Serang',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Builder(builder: (context) {
                          List menuItems = [
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/18063/18063573.png",
                              "label": "Pulsa &\nData"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/6124/6124997.png",
                              "label": "Google \nPlay Store"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/4425/4425250.png",
                              "label": "User \nRewards"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/2780/2780137.png",
                              "label": "Games \nWallet"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/6599/6599879.png",
                              "label": "BPJS \nKesehatan"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/2596/2596697.png",
                              "label": "Super \nDeals"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/2214/2214024.png",
                              "label": "Electricity \nBills"
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/3527/3527644.png",
                              "label": "View \nAll"
                            },
                          ];
                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              childAspectRatio: 1,
                              crossAxisSpacing: 6,
                              mainAxisSpacing: 6,
                            ),
                            itemCount: 8,
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
                  const SizedBox(height: 16),
                  CarouselSlider.builder(
                    itemCount: imgList.length,
                    itemBuilder: (context, index, realIndex) {
                      final imgUrl = imgList[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 14),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            imgUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeInOut,
                      enlargeCenterPage: true,
                      pauseAutoPlayOnTouch: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Menambahkan Bottom Navigation Bar
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
}
