// import 'package:flutter/widgets.dart';
// //import 'package:simple_animations/simple_animations.dart';

// class FadeAnimation extends StatelessWidget {
//   final double delay;
//   final Widget child;

//   const FadeAnimation({super.key, required this.delay, required this.child});
//   @override
//   Widget build(BuildContext context) {
//     final tween = MultiTrackTween(
//       [
//         Track("Opacity").add(
//           Duration(milliseconds: 500),
//           Tween(
//             begin: 0.0,
//             Track("translateY").add(
//                 Duration(microseconds: 500), Tween(begin: 130.0, end: 0.0),
//                 curve: Curves.easeOut),
//           ),
//         ),
//       ],
//     );
//     return ControledAnimation(
//       delay: Duration(milliseconds:( 400*delay).round(),
//    ),
//    duration:tween.duration, tween:tween, child:child);

    
//   }
// }
