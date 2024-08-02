import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final VoidCallback? onLeftIconPressed;
  final VoidCallback? onRightIconPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.leftIcon,
    this.rightIcon,
    this.onLeftIconPressed,
    this.onRightIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 60, 135, 66),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leftIcon != null && onLeftIconPressed != null) ...[
                IconButton(
                  onPressed: onLeftIconPressed,
                  icon: Icon(leftIcon, size: 30, color: Colors.white),
                ),
              ],
              if (leftIcon != null && onLeftIconPressed != null) const Spacer(),
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
              if (rightIcon != null && onRightIconPressed != null)
                const Spacer(),
              if (rightIcon != null && onRightIconPressed != null) ...[
                IconButton(
                  onPressed: onRightIconPressed,
                  icon: Icon(rightIcon, size: 30, color: Colors.white),
                ),
              ],
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 5.0), // فاصله بالایی برای آیکون‌ها
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 12.0)),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 60, 135, 66),
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(Icons.account_balance,
                        size: 30, color: Colors.white),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 6.0)),
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
                const Padding(padding: EdgeInsets.only(left: 6.0)),
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
  Size get preferredSize => const Size.fromHeight(
      kToolbarHeight + 50); // Adjust for the height of the additional container
}
