import 'package:flutter/material.dart';
import 'appBar.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'قبض موبایل',
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
              child: Icon(Icons.sim_card,
                  size: 50, color: Colors.green), // آیکون کوچک‌تر
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'شماره موبایل خود را وارد کنید',
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
                    Icon(Icons.sim_card),
                    SizedBox(width: 8),
                    Icon(Icons.touch_app_sharp),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: _selectedValue,
                      onChanged: (val) {
                        setState(() {
                          _selectedValue = val as int;
                        });
                      },
                    ),
                    const Text(
                      'میان دوره',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'پایان دوره',
                      style: TextStyle(fontSize: 16),
                    ),
                    Radio(
                      value: 1,
                      groupValue: _selectedValue,
                      onChanged: (val) {
                        setState(() {
                          _selectedValue = val as int;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
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
