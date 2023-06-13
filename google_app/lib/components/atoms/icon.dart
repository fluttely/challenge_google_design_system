import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

// class _IconMedium extends Icon {
//   _IconMedium(super.icon) : super();
// }

// class _IconLarge extends Icon {
//   _IconLarge(super.icon) : super();
// }

class Icon extends widgets.Icon {
  Icon(
    super.icon, {
    super.key,
    double? size,
  }) : super(
          color: Colors().iconColor,
          size: size ?? 20,
        );

  factory Icon.medium(widgets.IconData icon) => Icon(icon, size: 20);
  factory Icon.large(widgets.IconData icon) => Icon(icon, size: 24);
}
