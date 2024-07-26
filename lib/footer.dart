import 'package:flutter/material.dart';
import 'main.dart';
import 'myAccount.dart';
import 'myCards.dart';
import 'home.dart';

class CustomFooter extends StatefulWidget {
  const CustomFooter({super.key});

  @override
  _CustomFooterState createState() => _CustomFooterState();
}

class _CustomFooterState extends State<CustomFooter> {
  int _selectedIndex = 0; // اندیس کلید انتخاب شده

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // رنگ پس‌زمینه فوتر به سفید تغییر یافت
      height: 80.0, // ارتفاع فوتر
      child: Stack(
        children: [
          // نشانگر انتخاب
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: _selectedIndex * (MediaQuery.of(context).size.width / 3),
            top: 0, // تغییر به بالا برای قرار دادن نشانگر بالای کلیدها
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 5.0,
              color: Colors.green, // رنگ نشانگر انتخاب سبز
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFooterButton(
                  icon: Icons.home,
                  label: 'کارت های من',
                  index: 0,
                  page: const MyCards()),
              _buildFooterButton(
                  icon: Icons.search,
                  label: 'حساب های من',
                  index: 1,
                  page: const MyAccount()),
              _buildFooterButton(
                  icon: Icons.notifications,
                  label: 'میانبر ها',
                  index: 2,
                  page: const HomePage()),
            ],
          ),
        ],
      ),
    );
  }

  // تابع برای هدایت به صفحات جدید
  void _navigateToPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  Widget _buildFooterButton({
    required IconData icon,
    required String label,
    required int index,
    required Widget page, // پارامتر جدید برای صفحه مقصد
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
          _navigateToPage(page); // هدایت به صفحه مقصد
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: 8.0), // فاصله بالا و پایین برای کلید
          alignment: Alignment.center, // مرکز کردن محتویات
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.green, // رنگ آیکون‌ها به سبز تغییر یافت
                size: 24.0,
              ),
              const SizedBox(height: 4.0), // فاصله بین آیکون و متن
              Text(
                label,
                style: const TextStyle(
                  color: Colors
                      .black, // رنگ متن به سیاه تغییر یافت تا با پس‌زمینه سفید متناسب باشد
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
