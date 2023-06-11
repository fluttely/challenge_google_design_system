import 'package:flutter/widgets.dart' as widgets;

class _IconMedium extends Icon {
  const _IconMedium(super.icon) : super();
}

class _IconLarge extends Icon {
  const _IconLarge(super.icon) : super();
}

class Icon extends widgets.Icon {
  const Icon(super.icon, {super.key});

  factory Icon.medium(widgets.IconData icon) => _IconMedium(icon);
  factory Icon.large(widgets.IconData icon) => _IconLarge(icon);
}
