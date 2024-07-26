import 'dart:convert';
import 'package:flutter/material.dart';
import 'appBar.dart';
import 'package:flutter/services.dart' show rootBundle;

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  List<Map<String, String>> accountNumberList = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadData();
  }

  Future<void> _loadData() async {
    final String jsonString = await rootBundle.loadString('assets/cards.json');
    final List<dynamic> jsonResponse = json.decode(jsonString);
    setState(() {
      accountNumberList = jsonResponse.map((data) => {'title': data['title'].toString()}).toList();
    });
  }

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
      body: accountNumberList.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: accountNumberList.length,
              itemBuilder: (context, index) {
                final accountData = accountNumberList[index];
                final accountNumber = accountData['title'] ?? 'شماره حساب موجود نیست';

                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.account_circle,
                        color: Color.fromARGB(255, 60, 135, 66),
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          accountNumber,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit,
                            color: Color.fromARGB(255, 60, 135, 66)),
                        onPressed: () {
                          if (accountData.isNotEmpty) {
                            print('ویرایش شماره حساب: $accountNumber');
                          } else {
                            print('داده‌ای برای ویرایش موجود نیست');
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyCards(),
  ));
}
