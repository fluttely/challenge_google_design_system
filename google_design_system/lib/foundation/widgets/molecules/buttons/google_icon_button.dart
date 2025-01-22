import 'package:flutter/material.dart' as material hide IconData;

class GoogleIconButton extends material.IconButton {
  const GoogleIconButton({
    required super.onPressed,
    required super.icon,
    super.key,
  });
}
