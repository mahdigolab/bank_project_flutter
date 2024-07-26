import 'package:flutter/material.dart';
import 'package:bank_project_flutter/footer.dart'; // فرض بر این است که CustomFooter در این فایل است
import 'appBar.dart';

// مدل داده
class IconDataModel {
  final IconData icon;
  final String title;
  final Function() function; // تابع برای عملکرد

  IconDataModel({required this.icon, required this.title, required this.function});
}

// داده‌های نمونه
final List<IconDataModel> iconDataList = [
  IconDataModel(
    icon: Icons.star,
    title: 'پرداخت لحظه ای(پل)',
    function: () {
      print("Star icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.star,
    title: 'انتقال وجه داخلی',
    function: () {
      print("Star icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.star,
    title: 'کارت به کارت',
    function: () {
      print("Star icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.favorite,
    title: 'صورت حساب',
    function: () {
      print("Favorite icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.favorite,
    title: 'صیاد(پیچک)',
    function: () {
      print("Favorite icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.favorite,
    title: 'انتقال وجه پایا/ساتنا',
    function: () {
      print("Favorite icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.thumb_up,
    title: 'رهگیری پایا/ساتنا',
    function: () {
      print("Thumb Up icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.thumb_up,
    title: 'پرداخت قسط',
    function: () {
      print("Thumb Up icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.thumb_up,
    title: 'قبض موبایل',
    function: () {
      print("Thumb Up icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.thumb_up,
    title: 'شارژ مستقیم',
    function: () {
      print("Thumb Up icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.thumb_up,
    title: 'شناسه قبض و پرداخت',
    function: () {
      print("Thumb Up icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.thumb_up,
    title: 'رمز یکبار مصرف اینترنت بانک',
    function: () {
      print("Thumb Up icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.thumb_up,
    title: 'رمز یکبار مصرف حسابی',
    function: () {
      print("Thumb Up icon pressed");
    },
  ),
  IconDataModel(
    icon: Icons.thumb_up,
    title: 'استعلام شبا',
    function: () {
      print("Thumb Up icon pressed");
    },
  ),
  // افزودن داده‌های بیشتر در صورت نیاز
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'خانه',
        leftIcon: Icons.arrow_back_ios,
        rightIcon: Icons.home,
        onLeftIconPressed: () {
          Navigator.pop(context);
        },
        onRightIconPressed: () {
          // تابعی برای آیکون راست
        },
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: iconDataList.length,
        itemBuilder: (context, index) {
          final item = iconDataList[index];

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Material(
                color: Colors.green,
                shape: const CircleBorder(), // دایره‌ای کردن دکمه
                elevation: 5.0,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50.0), // دایره‌ای کردن دکمه
                  onTap: item.function, // فراخوانی تابع
                  child: Container(
                    padding: const EdgeInsets.all(12.0), // فاصله بین آیکون و لبه‌های دکمه
                    child: Center(
                      child: Icon(
                        item.icon,
                        color: Colors.white,
                        size: 40.0, // اندازه آیکون
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6.0), // فاصله بین دکمه و عنوان
              Container(
                width: double.infinity, // به عرض کل فضای موجود
                alignment: Alignment.center, // تراز کردن متن
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                child: Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: const CustomFooter(),
    );
  }
}
