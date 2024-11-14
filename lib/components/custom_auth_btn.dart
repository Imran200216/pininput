import 'package:flutter/material.dart';
import 'package:pininput/constants/colors.dart';

class CustomAuthBtn extends StatelessWidget {
  final VoidCallback onTap;
  final Widget btnWidget;

  const CustomAuthBtn({
    super.key,
    required this.onTap,
    required this.btnWidget,
  });

  @override
  Widget build(BuildContext context) {
    /// media query
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: sizeWidth,
        height: sizeHeight * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: btnWidget,
        ),
      ),
    );
  }
}
