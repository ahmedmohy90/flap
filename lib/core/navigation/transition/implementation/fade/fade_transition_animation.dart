import 'package:flap_task/core/navigation/transition/implementation/fade/Option/fade_animation_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Factory/transition_creator.dart';
import 'Animator/fade_animator.dart';

class FadeTransitionAnimation implements TransitionCreator {
  final FadeAnimationOptions options;

  const FadeTransitionAnimation({required this.options});

  @override
  Widget animate(Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      FadeTransition(
          opacity: FadeAnimator(options as FadeAnimationOptions).animator(animation), child: child);
}
