import 'package:flutter/material.dart';
import 'package:spotify_music_app/core/config/theme/app_colors.dart';

class BasicTextField extends StatelessWidget {
  final String? text;
  const BasicTextField({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
      ),
      cursorColor: AppColors.primary,
      style: const TextStyle(fontWeight: FontWeight.w600),
    );
  }
}
