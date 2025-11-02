import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 239, 238, 240),//0xff0001FC his
      backgroundColor: const Color(0xffFDFEFF),
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        // backgroundColor: Color.fromARGB(255, 239, 238, 240),
        backgroundColor: const Color(0xffFDFEFF),
        elevation: 0,
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Column(
              children: [
                Row(
                  children: [
                    _buildProductCard(
                      'assets/images/monitors.jpeg',
                      'Monitor',
                      '-50%',
                    ),
                    const SizedBox(width: 15),
                    _buildProductCard('assets/images/usb.png', 'Usb', '-30%'),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    _buildProductCard(
                      'assets/images/cpu.jpg',
                      'CPU',
                      '-20%',
                    ),
                    const SizedBox(width: 15),
                    _buildProductCard('assets/images/rtx.jpeg', 'RTX', '-30%'),
                  ],
                ),
              ],
            ),
            // const SizedBox(height: 90),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                Text(
                  '12 Madison Avenue, NYC',
                  style: TextStyle( fontSize: 18, color: Color(0xff0001fc)),
                ),
              ],
            ),
            const Text(
              'Fast Delivery: 17/11/19',
              style: TextStyle(color: Color(0xffA7A9BE), fontSize: 12),
            ),
            Text(
              '------------------------------------------------------------------------------------------------------------',
              style: TextStyle(color: Colors.grey,),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Payment', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                Text(
                  'Visa ***678 - Expire 02/20',
                  style: TextStyle( fontSize: 18, color: Color(0xff0001fc)),
                ),
              ],
            ),
            const Text(
              'Expire 02/20',
              style: TextStyle(color: Color(0xffA7A9BE), fontSize: 12),
            ),
            Text(
              '------------------------------------------------------------------------------------------------------------',
              style: TextStyle(
                color: Colors.grey,//. withOpacity(0.20),
              ),
              ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total', style: TextStyle(fontSize: 18)),
                Text(
                  'USD 1248',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xff0001fc)),
                ),
              ],
            ),
            
            SizedBox(width: 80,),
            Text(
                  'Enter a Discount Code',
                  style: TextStyle(
                    color: Color(0xff2DB57D),
                    fontSize: 12,
                  ),
                ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4718B2),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Pays', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Color.fromARGB(255, 239, 238, 240),
        backgroundColor: Color(0xffEFF5FB),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF5A5CE0), //5A5CE0
        unselectedItemColor: Colors.grey,
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(icon: Icon(Ionicons.home_outline), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.search_outline),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Ionicons.cart_outline), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }

  //   Widget _buildProductCard() { // one photo
  //     return Expanded(
  //       child: Container(
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.circular(12),
  //           boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 6)],
  //         ),
  //         padding: const EdgeInsets.all(10),
  //         child: Column(
  //           children: [
  //             Stack(
  //               children: [
  //                 Image.asset('assets/images/monitors.jpeg', height: 105),
  //                 Positioned(
  //                   top: 8,
  //                   left: 8,
  //                   child: Container(
  //                     padding:
  //                     const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
  //                     decoration: BoxDecoration(
  //                       color: Colors.blue,
  //                       borderRadius: BorderRadius.circular(4),
  //                     ),
  //                     child: const Text(
  //                       '-50%',
  //                       style: TextStyle(color: Colors.white, fontSize: 12),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             const SizedBox(height: 10),
  //             const Text('Monitors')
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  // }

// multi photo and customized
  Widget _buildProductCard(String imagePath, String title, String discount) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 6)],
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(imagePath, height: 100),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      discount,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
