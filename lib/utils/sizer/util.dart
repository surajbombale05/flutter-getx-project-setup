part of sizer;

class SizerUtil {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Orientation
  static late Orientation orientation;

  /// Type of Device
  ///
  /// This can either be mobile or tablet

  static late DeviceType deviceType;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  /// Sets the Screen's size and Device's Orientation,
  /// BoxConstraints, Height, and Width
  static void setScreenSize(
      BoxConstraints constraints, Orientation currentOrientation) {
    // Sets boxconstraints and orientation
    boxConstraints = constraints;
    orientation = currentOrientation;

    // Sets screen width and height
    width = boxConstraints.maxWidth;
    height = boxConstraints.maxHeight;
    // if (orientation == Orientation.portrait || kIsWeb) {
    //   width = boxConstraints.maxWidth;
    //   height = boxConstraints.maxHeight;
    // } else {
    //   width = boxConstraints.maxHeight;
    //   height = boxConstraints.maxWidth;
    // }

    // Sets ScreenType
    if (true) {
      if ((orientation == Orientation.portrait && width < 600) ||
          (orientation == Orientation.landscape && height < 600)) {
        deviceType = DeviceType.mobile;
        // deviceTypeWeb = DeviceTypeWeb.mobile;
      } else if (width >= 600 && width <= 1024) {
        deviceType = DeviceType.tablet;
        //deviceTypeWeb = DeviceTypeWeb.tablet;
      } else {
        //desktop screen
        deviceType = DeviceType.desktop;
      }
    }
  }

  //for getting deviceType
  static getWebResponsiveSize() {
    return width < 600
        ? DeviceType.mobile //'phone'
        : width >= 600 && width <= 1024
            ? DeviceType.tablet //'tablet'
            : DeviceType.desktop; //'desktop';
  }
}

/// Type of Device
///
/// This can be either mobile or tablet
//enum DeviceType { mobile, tablet, web, mac, windows, linux, fuchsia }

/// This can be either mobile or tablet with Respect to Web build
enum DeviceType { mobile, tablet, desktop }
