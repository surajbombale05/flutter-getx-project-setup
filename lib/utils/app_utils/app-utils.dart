// ignore: file_names
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:ticket/utils/sizer/sizer.dart';


String fetchIconFromAsset(assetName) {
  // if (assetName == AppIcons.logo.name) {
  //   return AppImages.logo;
  // }
    return "";
  
}


// bool isPhoneScreen(BuildContext context) {
//   return ResponsiveWrapper.of(context).isSmallerThan(TABLET);
// }

// bool isTabletScreen(BuildContext context) {
//   return ResponsiveWrapper.of(context).isLargerThan(MOBILE) &&
//       ResponsiveWrapper.of(context).isSmallerThan(DESKTOP);
// }

// bool isDesktopScreen(BuildContext context) {
//   return ResponsiveWrapper.of(context).isLargerThan(TABLET);
// }

// bool is4kScreen(BuildContext context) {
//   return ResponsiveWrapper.of(context).isLargerThan(DESKTOP);
// }

class CurrentScreen {
  static bool phoneScreen =
      SizerUtil.getWebResponsiveSize() == DeviceType.mobile;
  static bool tableScreen =
      SizerUtil.getWebResponsiveSize() == DeviceType.tablet;
  static bool desktopScreen =
      SizerUtil.getWebResponsiveSize() == DeviceType.desktop;
}

