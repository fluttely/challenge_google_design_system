import 'package:flutter/material.dart' as material hide IconData;
import 'package:google_app/google_app.dart';

class GoogleText extends material.Text {
  GoogleText(
    super.data, {
    super.key,
    material.Color? fontColor,
    double? fontSize,
    material.FontWeight? fontWeight,
  }) : super(
          style: material.TextStyle(
            overflow: material.TextOverflow.ellipsis,
            color: fontColor ?? GoogleLightColors.textColor,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? material.FontWeight.w300,
          ),
        );

  factory GoogleText.titleLarge(String data) => GoogleText(
        data,
        fontColor: GoogleLightColors.titleLargeColor,
        fontSize: 22,
        fontWeight: material.FontWeight.w400,
      );
}
