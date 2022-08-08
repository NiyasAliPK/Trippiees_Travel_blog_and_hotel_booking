import 'package:flutter/material.dart';
import 'package:trippies/app/data/consts/theme.dart';

class FilterChipCustom extends StatelessWidget {
  const FilterChipCustom({
    Key? key,
    required this.onTap,
    required this.text,
    required this.visibility,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final bool visibility;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
      onSelected: (value) {
        onTap;
      },
      avatar: Visibility(
        visible: visibility,
        child: const Icon(
          Icons.done,
          color: Colors.amber,
          size: 20,
        ),
      ),
      backgroundColor: primaryColor,
      selectedColor: Colors.red,
    );
  }
}
