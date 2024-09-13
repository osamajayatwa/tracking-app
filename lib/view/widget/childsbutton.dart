import 'package:bus_tracking_users/core/constant/color.dart';
import 'package:flutter/material.dart';

class ColorChangingButton2 extends StatelessWidget {
  final String label;
  final ValueNotifier<bool> _isPressed = ValueNotifier<bool>(false);

  ColorChangingButton2({required this.label});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isPressed,
      builder: (context, isPressed, child) {
        return MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: isPressed ? AppColor.red : AppColor.seconedcolor,
          onPressed: () {
            _isPressed.value = !_isPressed.value;
          },
          child: Text(label),
        );
      },
    );
  }
}

class ColorChangingButton extends StatelessWidget {
  final String label;
  final ValueNotifier<bool> _isPressed = ValueNotifier<bool>(false);

  ColorChangingButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isPressed,
      builder: (context, isPressed, child) {
        return MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: isPressed ? AppColor.primaryColor : AppColor.seconedcolor,
          onPressed: () {
            _isPressed.value = !_isPressed.value;
          },
          child: Text(label),
        );
      },
    );
  }
}
