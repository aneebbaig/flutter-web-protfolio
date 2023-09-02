
import '../utils/constants.dart';

enum ResponsiveSize {
  desktop,
  mobile,
  tablet,
}

ResponsiveSize determineResponsiveSize(double screenWidth) {


  if (screenWidth >= pcScreenSize) {
          return ResponsiveSize.desktop;
        } else if (screenWidth < pcScreenSize && screenWidth >= tabletScreenSize) {
          return ResponsiveSize.tablet;
        } else {
          return ResponsiveSize.mobile;
        }
}
