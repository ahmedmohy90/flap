import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';

ThemeData get appTheme => ThemeData(
      scaffoldBackgroundColor: ColorManager.scaffoldColor,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
          backgroundColor: ColorManager.white,
          iconTheme: IconThemeData(color: ColorManager.white)),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: ColorManager.textDefault),
     );
