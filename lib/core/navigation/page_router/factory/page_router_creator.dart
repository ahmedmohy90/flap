import 'package:flutter/material.dart';

import '../../Constants/imports_constants.dart';
import '../../helper/Interfaces/helper_imports.dart';



abstract class PageRouterCreator {
  Route<T> create<T>(
    Widget page, {
    RouteSettings? settings,
    TransitionType? transition,
    AnimationOption? animationOptions,
  });
}
