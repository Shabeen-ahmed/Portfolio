import 'package:flutter/material.dart';
import 'package:portfolioo/ThemeManager.dart';

import 'AnimatedNeumorphicContainer.dart';

//
// class logo extends StatelessWidget {
//    logo({this.child, this.height,super.key});
//
//    Widget? child;
//    double? height;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Transform.rotate(
//         angle: 45,
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(height != null ? height! * 0.8 : 15),
//             color: const Color(0xFF092549),
//           ),
//           child: Transform.rotate(
//             angle: 45,
//             child: Padding(
//               padding: EdgeInsets.all(height != null ? height! * 0.4 : 8),
//               child: AnimatedNeumorphicContainer(
//                   borderRadius: height != null ? height! * 0.5 : 15,
//                   child: Padding(
//                     padding: EdgeInsets.all(height != null ? height! * 0.3 : 8),
//                     child: Transform.rotate(
//                       angle: 45.1,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(height != null ? height * 0.8 : 15),
//                           color: const Color(0xFF092549),
//                         ),
//                         child: child ??
//                             SizedBox(
//                               height: 50,
//                               width: 50,
//                             ),
//                       ),
//                     ),
//                   )),
//             ),
//           ),
//         ),
//       )
//     );
//   }
// }
//



logo({Widget? child, double? height, required BuildContext context}) => Transform.rotate(
  angle: 45,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(height != null ? height * 0.8 : 15),
      color: Colors.grey.withOpacity(0.5),
    ),
    child: Transform.rotate(
      angle: 45,
      child: Padding(
        padding: EdgeInsets.all(height != null ? height * 0.4 : 8),
        child: AnimatedLogoContainer(
            borderRadius: height != null ? height * 0.5 : 15,
            child: Padding(
              padding: EdgeInsets.all(height != null ? height * 0.3 : 8),
              child: Transform.rotate(
                angle: 45.1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height != null ? height * 0.8 : 15),
                    color: Theme.of(context).customGradientColors.secondaryAccentColor.withOpacity(0.75),
                  ),
                  child: Transform.rotate(
                    angle: 3.14,
                    child: child ??
                        const SizedBox(
                          height: 50,
                          width: 50,

                        ),
                  ),
                ),
              ),
            )),
      ),
    ),
  ),
);
