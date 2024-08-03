import 'package:flutter/material.dart';
import 'appBar.dart';

class Shaba extends StatefulWidget {
  const Shaba({super.key});

  @override
  _ShabaState createState() => _ShabaState();
}

// ignore: camel_case_types
class _ShabaState extends State<Shaba> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: CustomAppBar(
        title: 'خانه',
        leftIcon: Icons.arrow_back_ios,
        rightIcon: Icons.menu,
        onLeftIconPressed: () {
          Navigator.pop(context);
        },
        onRightIconPressed: () {
          // تابعی برای آیکون راست
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            const Center(
              child: Icon(Icons.book,
                  size: 50, color: Colors.green), // آیکون کوچک‌تر
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'لطفا اطلاعات حساب موردنظر را وارد کنید',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              textAlign: TextAlign.right,
              decoration: const InputDecoration(
                hintText: 'شماره تلفن',
                border: OutlineInputBorder(),
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 8),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: [
            //         Radio(
            //           value: 2,
            //           groupValue: _selectedValue,
            //           onChanged: (val) {
            //             setState(() {
            //               _selectedValue = val as int;
            //             });
            //           },
            //         ),
            //         const Text(
            //           'میان دوره',
            //           style: TextStyle(fontSize: 16),
            //         ),
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         const Text(
            //           'پایان دوره',
            //           style: TextStyle(fontSize: 16),
            //         ),
            //         Radio(
            //           value: 1,
            //           groupValue: _selectedValue,
            //           onChanged: (val) {
            //             setState(() {
            //               _selectedValue = val as int;
            //             });
            //           },
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), // حاشیه‌های صاف
                ),
              ),
              child: const Text('استعلام',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
