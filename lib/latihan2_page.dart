import 'package:flutter/material.dart';

class Latihan2Page extends StatefulWidget {
  const Latihan2Page({super.key});

  @override
  State<Latihan2Page> createState() => _Latihan2PageState();
}

class _Latihan2PageState extends State<Latihan2Page> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 194, 194),
      body: Container(
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            MediaQuery.of(context).size.width <= 600 ? const SizedBox():
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Start journey with us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration:  BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(16),
                    bottomRight: const Radius.circular(16),
                    topLeft: MediaQuery.of(context).size.width <= 600 ? 
                    const Radius.circular(16):const Radius.circular(0),
                    bottomLeft: MediaQuery.of(context).size.width <= 600 ? 
                    const Radius.circular(16):const Radius.circular(0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Image.network(
                      'https://images.unsplash.com/photo-1728853487293-1a4c5c39b393?q=80&w=3384&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      width: 250,
                      height: 250,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
