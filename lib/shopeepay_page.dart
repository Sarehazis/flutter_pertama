import 'package:flutter/material.dart';

class MyShopeePay extends StatefulWidget {
  const MyShopeePay({super.key});

  @override
  State<MyShopeePay> createState() => _MyShopeePayState();
}

class _MyShopeePayState extends State<MyShopeePay> {
  // Daftar data untuk grid
  final List<Map<String, String>> gridData = [
    {'title': '5rb', 'subtitle': 'Rp7.000'},
    {'title': '10Rb', 'subtitle': 'Rp10.500'},
    {'title': '15Rb', 'subtitle': 'Rp9.500'},
    {'title': '20Rb', 'subtitle': 'Rp20.500'},
    {'title': '25Rb', 'subtitle': 'Rp19.500'},
    {'title': '30Rb', 'subtitle': 'Rp30.995'},
    {'title': '40Rb', 'subtitle': 'Rp41.495'},
    {'title': '45Rb', 'subtitle': 'Rp45.985'},
    {'title': '50Rb', 'subtitle': 'Rp44.500'},
    {'title': '55Rb', 'subtitle': 'Rp55.495'},
    {'title': '60Rb', 'subtitle': 'Rp61.495'},
    {'title': '65Rb', 'subtitle': 'Rp66.495'},
    {'title': '70Rb', 'subtitle': 'Rp71.495'},
    {'title': '75Rb', 'subtitle': 'Rp75.495'},
    {'title': '80Rb', 'subtitle': 'Rp81.495'},
    {'title': '85Rb', 'subtitle': 'Rp85.495'},
    {'title': '90Rb', 'subtitle': 'Rp91.495'},
    {'title': '95Rb', 'subtitle': 'Rp95.495'},
    {'title': '100Rb', 'subtitle': 'Rp101.495'},
    {'title': '110Rb', 'subtitle': 'Rp111.495'},
  ];

  // Menyimpan indeks item yang dipilih
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Row(
          children: const [
            Text(
              'Pulsa',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.clear,
                    color: Colors.grey[300],
                  ),
                  hintText: 'Type your number here',
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
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
          const SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: gridData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index; // Update selected index
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: _selectedIndex == index
                                ? Colors.orange
                                : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.transparent, // Tanpa warna latar
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              gridData[index]['title']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              gridData[index]['subtitle']!,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Tambahkan aksi checkout di sini
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Checkout'),
                  content: const Text('Anda berhasil melakukan checkout!'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            padding: const EdgeInsets.symmetric(vertical: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            'Checkout',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
