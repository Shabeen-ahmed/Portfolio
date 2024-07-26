import 'package:flutter/material.dart';

enum Device {
  mobile,
  desktop
}

class Globals {
  static double height = 1400;
  static double width = 1400;
  static Device device = Device.desktop;

  static void setDimensions(BuildContext context) {
    final size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    computeDevice(context);
  }

  static void computeDevice(context) {
    // a threshold width to differentiate of mobile or desktop
    const mobileThreshold = 500.0;

    //device type based on width
    if (width < mobileThreshold) {
      device = Device.mobile;
    } else {
      device = Device.desktop;
    }
  }
}