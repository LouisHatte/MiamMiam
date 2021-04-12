import 'package:flutter/material.dart';
import '../../../appColors.dart';
import 'package:miam_miam/globals.dart' as g;

class SimpleButton extends StatelessWidget {
  final IconData icon;
  final Function callBack;

  SimpleButton({
    this.icon,
    this.callBack,
  })  : assert(icon != null),
        assert(callBack != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: g.getWidth(43),
      height: g.getHeight(43),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.grey14,
            offset: Offset(0, g.getWidth(3)),
            blurRadius: 30,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(g.getHeight(10)),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        onPressed: this.callBack,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Icon(
            this.icon,
            color: AppColors.darkBlue,
          ),
        ),
      ),
    );
  }
}
