import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const Footer(
      {super.key, required this.selectedIndex, required this.onItemTapped});

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
            left: selectedIndex * (MediaQuery.of(context).size.width / 3),
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
                icon: Icons.credit_card,
                label: 'کارت های من',
                index: 0,
              ),
              _buildFooterButton(
                icon: Icons.account_circle,
                label: 'حساب های من',
                index: 1,
              ),
              _buildFooterButton(
                icon: Icons.home,
                label: 'میانبر ها',
                index: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFooterButton({
    required IconData icon,
    required String label,
    required int index,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onItemTapped(index); // استفاده از تابع برای تغییر صفحه
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
