import 'package:flutter/material.dart';

class AnimatedWidget extends StatefulWidget {
  @override
  _AnimatedWidgetState createState() => _AnimatedWidgetState();
}

class _AnimatedWidgetState extends State<AnimatedWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: null,
      builder: (context, child) {
        // bulder is called each time
        // _animationController changes its value
        return Transform.rotate(
          angle: _animationController.value,
          child: child,
        );
      },
    );
  }
}

class AnimatedDrawer extends StatefulWidget {
  @override
  _AnimatedDrawerState createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    _animationController.forward();
  }

  // void toggle() {
  //   return _animationController.isDismissed
  //       ? _animationController.forward()
  //       : _animationController.reverse();
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: null,
      builder: (context, child) {
        // bulder is called each time
        // _animationController changes its value
        return Transform.rotate(
          angle: _animationController.value,
          child: child,
        );
      },
    );
  }
}
