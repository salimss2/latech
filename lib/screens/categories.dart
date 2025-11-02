import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFEFF5FB),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF0001FC),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Ionicons.home_outline), label: ""),
          BottomNavigationBarItem(icon: Icon(Ionicons.search_outline), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.cart_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "",
          ),
        ],
      ),
      backgroundColor: Color(0xFFF6F7F8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.48, 29, 0, 0),
              child: Icon(Icons.arrow_back, size: 40, color: Color(0xFF0A1034)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Color(0xFF0A1034),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.33, 25, 0, 0),
                      child: Container(
                        height: 77,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24.5, 28, 0, 0),
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: Color(0xFF0A1034),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.33, 16, 0, 0),
                      child: Container(
                        height: 77,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24.5, 28, 0, 0),
                          child: Text(
                            'Computers',
                            style: TextStyle(
                              color: Color(0xFF0A1034),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.33, 16, 0, 0),
                      child: Container(
                        height: 77,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24.5, 28, 0, 0),
                          child: Text(
                            'Accessories',
                            style: TextStyle(
                              color: Color(0xFF0A1034),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.33, 16, 0, 0),
                      child: Container(
                        height: 77,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24.5, 28, 0, 0),
                          child: Text(
                            'Smartphones',
                            style: TextStyle(
                              color: Color(0xFF0A1034),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.33, 16, 0, 0),
                      child: Container(
                        height: 77,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24.5, 28, 0, 0),
                          child: Text(
                            'Smart objects',
                            style: TextStyle(
                              color: Color(0xFF0A1034),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.33, 16, 0, 0),
                      child: Container(
                        height: 77,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24.5, 28, 0, 0),
                          child: Text(
                            'Speakers',
                            style: TextStyle(
                              color: Color(0xFF0A1034),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.33, 16, 0, 0),
                      child: Container(
                        height: 77,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24.5, 28, 0, 0),
                          child: Text(
                            'Software',
                            style: TextStyle(
                              color: Color(0xFF0A1034),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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
