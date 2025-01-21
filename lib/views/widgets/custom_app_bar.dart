import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_icon.dart';

class CustomAppBAr extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomAppBAr({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
