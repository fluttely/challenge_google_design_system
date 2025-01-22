import 'package:flutter/material.dart' as material hide IconData;

class GoogleIconButton extends material.IconButton {
  const GoogleIconButton({
    super.key,
    required super.onPressed,
    required super.icon,
  });
}
