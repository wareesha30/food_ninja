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
    return CheckboxListTile(
      title: Text(
        widget.text,
      ),
      visualDensity: VisualDensity.compact,
      checkboxShape: const CircleBorder(),
      activeColor: darkGreen,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
      dense: true,
    );
  }
}
