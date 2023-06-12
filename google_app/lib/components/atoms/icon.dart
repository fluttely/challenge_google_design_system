import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

class _IconMedium extends Icon {
  _IconMedium(super.icon) : super();
}

class _IconLarge extends Icon {
  _IconLarge(super.icon) : super();
}

class Icon extends widgets.Icon {
  Icon(
    super.icon, {
    super.key,
  }) : super(
          color: Colors().iconColor,
          size: 20,
        );

  factory Icon.medium(widgets.IconData icon) => _IconMedium(icon);
  factory Icon.large(widgets.IconData icon) => _IconLarge(icon);
}
