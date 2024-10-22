import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  RoundedButtonWidget({
    required this.btnName,
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(21)),
        ),
      ),
      onPressed: callBack, // Safely invoking callback
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon!,
            SizedBox(width: 8), // Adding space between icon and text
          ],
          Text(
            btnName,
            style: textStyle ??
                TextStyle(
                    color: Colors.white), // Applying text style if provided
          ),
        ],
      ),
    );
  }
}
