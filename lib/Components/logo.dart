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


class RotatingLogo extends StatefulWidget {
  final Widget? child;
  final double? height;

  const RotatingLogo({Key? key, this.child, this.height}) : super(key: key);

  @override
  _RotatingLogoState createState() => _RotatingLogoState();
}

class _RotatingLogoState extends State<RotatingLogo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat(); // Make the animation repeat forever

    _animation = Tween<double>(begin: 0, end: 2 * 3.14).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value,
          child: logo(
            child: widget.child,
            height: widget.height,
            context: context,
          ),
        );
      },
    );
  }
}