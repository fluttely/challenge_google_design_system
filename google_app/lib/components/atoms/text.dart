import 'package:flutter/material.dart' as material hide IconData;

class Text extends material.Text {
  const Text(
    super.data, {
    super.key,
    super.style,
  }) : super(
        // style: const material.TextStyle(color: material.Colors.black), // TODO
        );
}
