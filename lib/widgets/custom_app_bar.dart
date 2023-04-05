import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 24),
          ),
          const Spacer(),
          CustomIcon(
            icon: icon,
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
