import 'package:calculator_app/core/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final VoidCallback buttonTapped;

  const CustomButton({
    Key? key,
    required this.color,
    required this.textColor,
    required this.text,
    required this.buttonTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: InkWell(
        onTap: buttonTapped,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: UIHelper.XXLargeFontSize),
          ),
        ),
      ),
    );
  }
}
