import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 60, 135, 66),
          title:  Row(
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios,
                            size: 30, color: Colors.white))),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "خرید شارژ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Icon(Icons.home, size: 42, color: Colors.white),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 12.0, top: 1.0)),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 60, 135, 66),
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(Icons.account_balance_outlined,
                        size: 30, color: Colors.white),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 6.0, top: 1.0)),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 60, 135, 66),
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(Icons.info_outline_rounded,
                        size: 30, color: Colors.white),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 6.0, top: 1.0)),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 60, 135, 66),
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(Icons.phone, size: 30, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
