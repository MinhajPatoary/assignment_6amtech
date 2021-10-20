import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

int _primaryColor = 0xFFEF7822;
Color backgroundColor = const Color(0xFFFEFEFE);
Color contentColor = const Color(0xFF000743);
Color contentBackgroundColor = const Color(0xFFFFFFFF);
Color hintIconColor = const Color(0xFF9F9F9F);
Color hintTextColor = const Color(0xFFB2B2B2);
Color offerColor = const Color(0xFF00CF46);

//
MaterialColor primarySwatch = MaterialColor(
  _primaryColor,
  <int, Color>{
    50: const Color(0xFFE3F2FD),
    100: const Color(0xFFBBDEFB),
    200: const Color(0xFF90CAF9),
    300: const Color(0xFF64B5F6),
    400: const Color(0xFF42A5F5),
    500: Color(_primaryColor),
    600: const Color(0xFF1E88E5),
    700: const Color(0xFF1976D2),
    800: const Color(0xFF1565C0),
    900: const Color(0xFF0D47A1),
  },
);
// Color primaryColor = Color(_primaryColor);
