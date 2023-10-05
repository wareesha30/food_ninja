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
    return ListTileTheme(
      horizontalTitleGap: 3,
      child: CheckboxListTile(
        title: Text(
          widget.text,
        ),
        visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
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
      ),
    );
  }
}
