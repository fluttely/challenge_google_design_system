import 'package:flutter/material.dart' as material hide IconData;
import 'package:google_app/google_app.dart';

class Text extends material.Text {
  Text(
    super.data, {
    super.key,
    material.Color? fontColor,
    double? fontSize,
    material.FontWeight? fontWeight,
  }) : super(
            style: material.TextStyle(
              overflow: material.TextOverflow.ellipsis,
          color: fontColor ?? ColorsUtils.textColor,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? material.FontWeight.w300,
        ));

  factory Text.titleLarge(String data) => Text(
        data,
        fontColor: ColorsUtils.titleLargeColor,
        fontSize: 22,
        fontWeight: material.FontWeight.w400,
      );
}
