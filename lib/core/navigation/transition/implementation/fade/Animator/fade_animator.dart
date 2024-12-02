import 'package:flap_task/core/navigation/transition/implementation/fade/Option/fade_animation_option.dart';
import 'package:flutter/material.dart';

import '../../../../Constants/imports_constants.dart';
import '../../../../helper/Interfaces/helper_imports.dart';


class FadeAnimator extends Animator<double>
    implements TweenBehaviour<double>, CurveBehaviour {
  final FadeAnimationOptions options;

  FadeAnimator(this.options);

  @override
  CurvedAnimation setCurveAnimation(Animation<double> animation) {
    return CurvedAnimation(
      parent: animation,
      curve:  RouterConstants.transitionCurve,
      reverseCurve:
           RouterConstants.reverseTransitionCurve,
    );
  }

  @override
  Tween<double> setTween() {
    return Tween<double>(
      begin: options.begin,
      end: options.end,
    );
  }

  @override
  Animation<double> animator(Animation<double> animation) {
    return setTween().animate(setCurveAnimation(animation));
  }
}
