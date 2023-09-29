import 'package:flutter/material.dart';
import 'package:food_ninja/utils/colors.dart';

class KeepSignedInCheckbox extends StatefulWidget {
  final String text;
  const KeepSignedInCheckbox({super.key, required this.text});

  @override
  State<KeepSignedInCheckbox> createState() => _KeepSignedInCheckboxState();
}

class _KeepSignedInCheckboxState extends State<KeepSignedInCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        CheckboxListTile(
          checkboxShape: const CircleBorder(),
          activeColor: darkGreen,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ],
    );
  }
}