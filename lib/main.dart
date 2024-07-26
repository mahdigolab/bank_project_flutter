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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
                      border: OutlineInputBorder(),
                      labelText: 'نام کاربری',
                      alignLabelWithHint: true),
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(':کانال ارتباطی'),
                        const SizedBox(width: 10),
                        const Text('پیامک'),
                        const SizedBox(width: 10),
                        Switch(value: _isSwitched, onChanged: _toggleSwitch),
                        const SizedBox(
                            width: 10), // Space between switch and next text
                        const Text('اینترنتی'),
                      ],
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 0.0),
                    child: SizedBox(
                      height: 70,
                      width: 350,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // حذف حاشیه گرد
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: const Text('ورود'),
                      ),
                    ))
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
                        decorationThickness: 2),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Icon(Icons.fingerprint,
                  size: 100, color: Color.fromARGB(255, 42, 197, 42)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
