import 'package:bank_project_flutter/mobile.dart';
import 'package:flutter/material.dart';
import 'appBar.dart';

// مدل داده
class IconDataModel {
  final IconData icon;
  final String title;
  final Widget Function(BuildContext) pageBuilder; // ویجت سازنده صفحه

  IconDataModel({
    required this.icon,
    required this.title,
    required this.pageBuilder,
  });
}

// داده‌های نمونه
final List<IconDataModel> iconDataList = [
  IconDataModel(
    icon: Icons.sync_alt,
    title: 'پرداخت لحظه ای(پل)',
    pageBuilder: (context) => const Mobile(), // صفحه مقصد
  ),
  IconDataModel(
    icon: Icons.sync_alt,
    title: 'انتقال وجه داخلی',
    pageBuilder: (context) => DummyScreen(title: 'انتقال وجه داخلی'),
  ),
  IconDataModel(
    icon: Icons.credit_card,
    title: 'کارت به کارت',
    pageBuilder: (context) => DummyScreen(title: 'کارت به کارت'),
  ),
  IconDataModel(
    icon: Icons.wallet_outlined,
    title: 'صورت حساب',
    pageBuilder: (context) => DummyScreen(title: 'صورت حساب'),
  ),
  IconDataModel(
    icon: Icons.playlist_add_check_outlined,
    title: 'صیاد(پیچک)',
    pageBuilder: (context) => DummyScreen(title: 'صیاد(پیچک)'),
  ),
  IconDataModel(
    icon: Icons.sync_alt,
    title: 'انتقال وجه پایا/ساتنا',
    pageBuilder: (context) => DummyScreen(title: 'انتقال وجه پایا/ساتنا'),
  ),
  IconDataModel(
    icon: Icons.assured_workload_outlined,
    title: 'رهگیری پایا/ساتنا',
    pageBuilder: (context) => DummyScreen(title: 'رهگیری پایا/ساتنا'),
  ),
  IconDataModel(
    icon: Icons.payments_outlined,
    title: 'پرداخت قسط',
    pageBuilder: (context) => DummyScreen(title: 'پرداخت قسط'),
  ),
  IconDataModel(
    icon: Icons.sim_card,
    title: 'قبض موبایل',
    pageBuilder: (context) => DummyScreen(title: 'قبض موبایل'),
  ),
  IconDataModel(
    icon: Icons.sim_card_alert_outlined,
    title: 'شارژ مستقیم',
    pageBuilder: (context) => DummyScreen(title: 'شارژ مستقیم'),
  ),
  IconDataModel(
    icon: Icons.qr_code_2_outlined,
    title: 'شناسه قبض و پرداخت',
    pageBuilder: (context) => DummyScreen(title: 'شناسه قبض و پرداخت'),
  ),
  IconDataModel(
    icon: Icons.lock_reset_outlined,
    title: 'رمز یکبار مصرف اینترنت بانک',
    pageBuilder: (context) => DummyScreen(title: 'رمز یکبار مصرف اینترنت بانک'),
  ),
  IconDataModel(
    icon: Icons.lock_reset_outlined,
    title: 'رمز یکبار مصرف حسابی',
    pageBuilder: (context) => DummyScreen(title: 'رمز یکبار مصرف حسابی'),
  ),
  IconDataModel(
    icon: Icons.query_stats_rounded,
    title: 'استعلام شبا',
    pageBuilder: (context) => DummyScreen(title: 'استعلام شبا'),
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
              // تنظیم اندازه کلید و استفاده از BoxConstraints
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(
                  width: 60.0, // عرض دکمه
                  height: 60.0, // ارتفاع دکمه
                ),
                child: Material(
                  color: Colors.green,
                  shape: const CircleBorder(), // دایره‌ای کردن دکمه
                  elevation: 5.0,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(40.0), // دایره‌ای کردن دکمه
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: item.pageBuilder),
                      );
                    }, // فراخوانی تابع
                    child: Center(
                      child: Icon(
                        item.icon,
                        color: Colors.white,
                        size: 30.0, // اندازه آیکون
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6.0), // فاصله بین دکمه و عنوان
              Container(
                width: double.infinity, // به عرض کل فضای موجود
                alignment: Alignment.center, // تراز کردن متن
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
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
      // bottomNavigationBar: const Footer(),
    );
  }
}

class DummyScreen extends StatelessWidget {
  final String title;

  DummyScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('صفحه $title'),
      ),
    );
  }
}
