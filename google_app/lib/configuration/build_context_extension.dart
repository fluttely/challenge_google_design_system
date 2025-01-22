import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

extension BuildContextExtension on widgets.BuildContext {
  // GoogleDesignSystem get designSystem => GoogleApp.of(this).designSystem;
  GoogleWidgets get widgets => GoogleApp.of(this).designSystem.widgets;
  Theme get theme => GoogleApp.of(this).designSystem.theme;
}
