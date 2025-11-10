import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latech/screens/sign_up.dart';
class LetsStart extends StatefulWidget {
  const LetsStart({super.key});

  @override
  State<LetsStart> createState() => _LetsStartState();
}

class _LetsStartState extends State<LetsStart> {
  @override
  void initState() {
    super.initState();

    // ✅ هذا هو الكود الذي نستخدمه لفحص الأصول (assets)
    rootBundle.loadString('AssetManifest.json').then((value) {
      print(value); // يطبع قائمة الأصول الموجودة فعليًا في المشروع
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xFF0001FC),
      body: Column(
        children: [
          SizedBox(height: 30),
          Image.asset("assets/images/picture.png"),
          SizedBox(
                  width: 311,
                  height: 53,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF3B00FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Let’s start',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                TextButton(onPressed: (){}, child: Text('Skip for now',style: TextStyle(fontSize: 18,color: Colors.white),)),

        ],
      ),
    ));
  }
}
