import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  final String message;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final Duration? duration;
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final SnackBarBehavior? behavior;

  const CustomSnackBar({
    super.key,
    required this.message,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.iconColor,
    this.duration,
    this.borderRadius,
    this.horizontalPadding,
    this.verticalPadding,
    this.textStyle,
    this.textAlign,
    this.behavior,
  });

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, color: iconColor ?? Colors.white),
            const SizedBox(width: 8), 
          ],
          Expanded(
            child: Text(
              message,
              style: textStyle ??
                  TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: 16,
                  ),
              textAlign: textAlign ?? TextAlign.left,
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      duration: duration ?? const Duration(seconds: 3),
      behavior: behavior ?? SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 16.0,
        vertical: verticalPadding ?? 10.0,
      ),
    );
  }
}

