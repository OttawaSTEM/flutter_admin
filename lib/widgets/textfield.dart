import 'package:flutter/material.dart';
import 'package:flutter_admin/constants/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final Function onChange;

  const TextFieldWidget({
    super.key,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: textColor,
        filled: true,
        border: InputBorder.none,
      ),
    );
  }
}
