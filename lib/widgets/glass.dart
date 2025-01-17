// import 'dart:ui';
// import 'package:flutter/material.dart';

// final _borderRadius = BorderRadius.circular(20);

// class GlassBow extends StatelessWidget {
//   const GlassBow({super.key, required this.child, this.width, this.height});
//   final Widget child;
//   final width;
//   final height;

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: _borderRadius,
//       child: SizedBox(
//         child: Stack(
//           children: [
//             BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//               child: Container(
//                   height: height,
//                   width: width,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white.withOpacity(0.2)),
//                       borderRadius: _borderRadius,
//                       gradient: LinearGradient(
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                           colors: [
//                             Colors.white.withOpacity(0.4),
//                             Colors.white.withOpacity(0.1)
//                           ])),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: child,
//                   )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
