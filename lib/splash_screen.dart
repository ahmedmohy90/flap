import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'core/navigation/named_routes.dart';
import 'core/navigation/navigator.dart';
import 'core/resources/app_constants.dart';
import 'core/resources/assets_manager.dart';
import 'core/resources/color_manager.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  Timer? _timer;

  late Animation<double> animation;
  late AnimationController animationController;
  _startDelay() {
    _timer =
        Timer(const Duration(seconds: AppConstants.splashDuration), _goNext);
  }

  _goNext() async {
    //  await ref.watch(getStartedProvider.notifier).loadState();

    Go.offNamed(NamedRoutes.dashBoard);
    // Navigator.pop(context, MaterialPageRoute(builder: (context) => const OnboardingScreen()));
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 60));
    animation = Tween<double>(begin: 0, end: 360).animate(animationController);

    animationController.repeat();
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.repeat();
      }
    });
  }

  @override
  void didChangeDependencies() {
    _startDelay();
    super.didChangeDependencies();
  }

  @override
  /// Cleans up resources used by [_SplashViewState].
  ///
  /// This cancels the timer that triggers navigation to the next screen and
  /// disposes of the animation controller used to drive the loading animation.
  ///
  /// This is called automatically when the [State] object is disposed.
  void dispose() {
    _timer!.cancel();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const degrees = 90.0;
    const angle = degrees * pi / 180;
    return Scaffold(
        backgroundColor: ColorManager.black,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FLAP',
                style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 34.h, right: 5.w),
                  child: AnimatedBuilder(
                    animation: animation,
                    builder: (ctx, child) => Transform.rotate(
                      angle: animation.value,
                      child: SvgPicture.asset(
                        SVGAssetsManager.logoStar,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
