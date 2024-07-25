import 'package:flutter/material.dart';
import 'package:portfolioo/ThemeManager.dart';
import 'package:provider/provider.dart';

class AnimatedNeumorphicContainer extends StatefulWidget {
  final Widget child;
  final double borderRadius;
  final double depth;
  final Duration duration;

  const AnimatedNeumorphicContainer({
    super.key,
    required this.child,
    this.borderRadius = 15.0,
    this.depth = 10.0,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  _AnimatedNeumorphicContainerState createState() => _AnimatedNeumorphicContainerState();
}

class _AnimatedNeumorphicContainerState extends State<AnimatedNeumorphicContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        bool isDarkTheme = themeProvider.isDarkTheme;
        return AnimatedContainer(
          duration: widget.duration,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            color: Theme.of(context).customGradientColors.secondaryAccentColor,
            boxShadow: [
              BoxShadow(
                blurRadius: widget.depth,
                offset: isDarkTheme ? Offset(widget.depth - 10, widget.depth - 5) : Offset(widget.depth, widget.depth),
                color: _isHovered
                    ? isDarkTheme
                        ? Colors.grey
                        : Colors.white
                    : isDarkTheme
                        ? Colors.grey[300]!.withOpacity(0.25)
                        : Colors.grey[300]!,
              ),
              BoxShadow(
                blurRadius: widget.depth,
                offset: isDarkTheme ? Offset(widget.depth * 0.5, widget.depth * 0.5) : Offset(widget.depth, widget.depth),
                color: _isHovered
                    ? isDarkTheme
                        ? Colors.grey[400]!.withOpacity(0.25)
                        : Colors.grey[400]!
                    : isDarkTheme
                        ? const Color(0xFFA3B1C6).withOpacity(0.25)
                        : const Color(0xFFA3B1C6),
              ),
            ],
          ),
          child: widget.child,
        );
      }),
    );
  }
}

class AnimatedLogoContainer extends StatefulWidget {
  final Widget child;
  final double borderRadius;
  final double depth;
  final Duration duration;

  const AnimatedLogoContainer({
    super.key,
    required this.child,
    this.borderRadius = 15.0,
    this.depth = 10.0,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  _AnimatedLogoContainerState createState() => _AnimatedLogoContainerState();
}

class _AnimatedLogoContainerState extends State<AnimatedLogoContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: widget.duration,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          color: Theme.of(context).customGradientColors.accentColor,
          boxShadow: [
            BoxShadow(
              blurRadius: widget.depth,
              offset: Offset(-widget.depth, -widget.depth),
              color: _isHovered ? Theme.of(context).customGradientColors.accentColor.withOpacity(0.3) : Colors.grey[300]!.withOpacity(0.5),
            ),
            BoxShadow(
              blurRadius: widget.depth,
              offset: Offset(widget.depth, widget.depth),
              color: _isHovered ? Colors.grey[400]!.withOpacity(0.3) : Theme.of(context).customGradientColors.accentColor.withOpacity(0.3),
            ),
          ],
        ),
        child: widget.child,
      ),
    );
  }
}
