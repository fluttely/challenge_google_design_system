import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleText extends StatelessWidget {
  const GoogleText(
    this.data, {
    super.key,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.overflow,
  });

  factory GoogleText.titleLarge(String data) => GoogleText(
        data,
        fontColor: GoogleLightColors.titleLargeColor,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      );

  final String data;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        overflow: overflow ?? TextOverflow.ellipsis,
        color: fontColor ?? GoogleLightColors.textColor,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w300,
      ),
    );
  }
}
