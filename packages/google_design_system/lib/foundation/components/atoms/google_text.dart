import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleText extends Text {
  GoogleText(
    super.data, {
    super.key,
    Color? fontColor,
    double? fontSize,
    FontWeight? fontWeight,
  }) : super(
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
            color: fontColor ?? GoogleLightColors.textColor,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? FontWeight.w300,
          ),
        );

  factory GoogleText.titleLarge(String data) => GoogleText(
        data,
        fontColor: GoogleLightColors.titleLargeColor,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      );
}
