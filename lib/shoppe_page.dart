import 'package:flutter/material.dart';

class MyShoppeApp extends StatefulWidget {
  const MyShoppeApp({super.key});

  @override
  State<MyShoppeApp> createState() => _MyShoppeAppState();
}

class _MyShoppeAppState extends State<MyShoppeApp> {
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
                'Message';
              },
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey[400],
              ),
              onPressed: () {
                'Cart';
              },
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
