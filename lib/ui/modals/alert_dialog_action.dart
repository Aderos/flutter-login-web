import 'package:admin/config/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AlertDialogAction extends StatelessWidget {
  const AlertDialogAction({
    required this.title,
    this.onPressed,
    this.textStyle,
    Key? key,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: textStyle ??
              const TextStyle(
                color: AppColors.black,
              ),
        ),
      );
}
