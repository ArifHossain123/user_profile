import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// import 'package:simple_animations/simple_animations.dart';
//import 'package:flutter/animation.dart';

//enum AniProps {opacity,translateY, track}

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation({super.key, required this.delay, required this.child});
  @override
  Widget build(BuildContext context) {
    final tween = MultiTween([
        Track("Opacity").add(
          const Duration(milliseconds: 500),
          Tween(
            begin: 0.0, end:1.0,),),
            Track("translateY").add(
              const  Duration(microseconds: 500),
                Tween(begin: 130.0, end: 0.0),
                curve: Curves.easeOut),
         ] );
    return PlayAnimation(
      delay: Duration(
        milliseconds: (400 * delay).round(),
      ),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
          offset: Offset(
            0,
            animation["translateY"],
          ),
        ),
      ),
    );
  }
 }
