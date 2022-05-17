import 'package:flutter/material.dart';

class SelectableBox extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function()? onTap;
  
  const SelectableBox(
    this.text, { 
    Key? key,
    required this.isSelected, 
    this.onTap 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 8.0,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          text,
          style: TextStyle(color: isSelected ? ThemeData.dark().backgroundColor : Colors.white),
        ),
      ),
    );
  }
}