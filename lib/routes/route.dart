import 'package:flutter/widgets.dart';

import '../pages/login_page.dart';
import '../pages/step_page.dart';

Map<String, WidgetBuilder> route = {
  '/': (context) => const StepPage(),
  '/login': (context) => LoginPage(),
};
