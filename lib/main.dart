import 'package:bank_project_flutter/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: LoginPage(title: 'صفحه اصلی'),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSwitched = false; // State for the switch

  void _toggleSwitch(bool value) {
    setState(() {
      _isSwitched = value;
    });
  }

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // رنگ پس‌زمینه اپ‌بار
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.green),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.green),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.green),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.info, color: Colors.green),
            onPressed: () {},
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
        ),
        elevation: 0, // حذف سایه
        toolbarHeight: 70.0, // ارتفاع اپ‌بار
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
              child: SizedBox(
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.green), // رنگ حاشیه
                    // ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2.0), // رنگ و ضخامت حاشیه هنگام فوکوس
                    ),
                    labelText: 'کلمه عبور',
                    labelStyle: TextStyle(color: Colors.green), // رنگ متن label
                    alignLabelWithHint: true,
                    
                  ),
                  // cursorColor: Colors.green,
                  cursorWidth: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('کانال ارتباطی:', style: TextStyle(color: Colors.green, fontSize: 16)),
                      const SizedBox(width: 10),
                      const Text('پیامک', style: TextStyle(fontSize: 16)),
                      const SizedBox(width: 10),
                      Switch(
                        value: _isSwitched,
                        onChanged: _toggleSwitch,
                        activeColor: Colors.green, // رنگ سوئیچ
                      ),
                      const SizedBox(width: 10), // فاصله بین سوئیچ و متن بعدی
                      const Text('اینترنتی', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
                  child: SizedBox(
                    height: 70,
                    width: 350,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // رنگ پس‌زمینه دکمه
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // حذف حاشیه گرد
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );
                      },
                      child: const Text('ورود', style: TextStyle(color: Colors.white, fontSize: 24)),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'بازیابی رمز عبور',
                    style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Icon(
                Icons.fingerprint,
                size: 100,
                color: Color.fromARGB(255, 42, 197, 42),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
