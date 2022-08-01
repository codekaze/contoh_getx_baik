import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final defaultFontFamily = GoogleFonts.poppinsTextTheme();

final ThemeData appThemeData = ThemeData.dark().copyWith(
  primaryColor: theme.mainColor,
  backgroundColor: theme.backgroundColor,
  dialogBackgroundColor: theme.trackerBackgroundColor,
  scaffoldBackgroundColor: theme.backgroundColor,
  iconTheme: IconThemeData(
    color: theme.textColor1,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: theme.textColor1,
    ),
    bodyText2: TextStyle(
      color: theme.textColor1,
    ),
  ).apply(
    bodyColor: theme.textColor1,
    displayColor: theme.textColor1,
  ),
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    shadowColor: Colors.grey[50],
    backgroundColor: theme.backgroundColor,
    iconTheme: IconThemeData(
      color: theme.textColor1,
    ),
    toolbarTextStyle: TextStyle(
      color: theme.textColor1,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: theme.mainColor,
  ),
);

class ApplicationTheme {
  bool darkTheme = true;

  Color get mainColor {
    return Color(0xff2eaadc);
  }

  List<Color> get defaultColors {
    if (darkTheme) {
      return [
        Color(0xff505558),
        Color(0xff979A9B),
        Color(0xff937264),
        Color(0xffFFA344),
        Color(0xffFFDC49),
        Color(0xff4DAB9A),
        Color(0xff529CCA),
        Color(0xff9A6DD7),
        Color(0xffE255A1),
        Color(0xffFF7369)
      ];
    } else {
      return [
        Color(0xfff8f4f4),
        Color(0xff979A9B),
        Color(0xff937264),
        Color(0xffFFA344),
        Color(0xffFFDC49),
        Color(0xff4DAB9A),
        Color(0xff529CCA),
        Color(0xff9A6DD7),
        Color(0xffE255A1),
        Color(0xffFF7369)
      ];
    }
  }

  Color get alphaBannerColor {
    return Color(0xff673f8f);
  }

  Color get backgroundColor {
    //return Color(0xff232224);
    if (darkTheme) {
      return Color(0xff2f3437);
    } else {
      return Color(0xffffffff);
    }
  }

  Color get contrastBackgroundColor {
    if (darkTheme) {
      return Color(0xff323538);
    } else {
      return Color(0xffFAFAFA);
    }
  }

  Color get contrastBackgroundColor2 {
    if (darkTheme) {
      return Color(0xff212325);
    } else {
      return Color(0xffF4F4F4);
    }
  }

  Color get contrastBackgroundColor3 {
    if (darkTheme) {
      return Color(0xff212325);
    } else {
      return Color(0xffE0E0E0);
    }
  }

  Color get trackerBackgroundColor {
    //return Color(0xff39373b);
    if (darkTheme) {
      return Color(0xff3f4447);
    } else {
      return Color(0xffffffff);
      //return Color(0xfff8f4f4);
    }
  }

  Color get appBarColor {
    return Colors.white;
  }

  Color get textColor {
    if (darkTheme) {
      return Color(0xffF6F6F6);
    } else {
      return Color(0xff37352f);
    }
  }

  Color get textColor1 {
    if (darkTheme) {
      return Color(0xffCDCDCD);
    } else {
      return Color(0xff585650);
    }
  }

  Color get textColor2 {
    if (darkTheme) {
      return Color(0xffCDCDCD);
    } else {
      return Color(0xff585650);
    }
  }

  Color get textColor3 {
    if (darkTheme) {
      return Color(0xffCDCDCD);
    } else {
      return Color(0xff777672);
    }
  }

  double get elevation {
    if (darkTheme) {
      return 4;
    } else {
      return 2;
    }
  }

  Color get borderColor1 {
    if (darkTheme) {
      return Color(0xff121212);
    } else {
      return Color(0xffC0C0C0);
    }
  }

  Color get inactiveColor {
    return Colors.grey[600]!;
  }

  Color get success {
    return Colors.green;
  }

  Color get danger {
    return Colors.red;
  }

  Color get warning {
    return Colors.orange;
  }

  Color get info {
    return Colors.green;
  }

  Color get primary {
    return Colors.grey[900]!;
  }

  Color get disabled {
    return Colors.grey[300]!;
  }

  //Radius
  double smallestCircularRadius = 2.5;
  double smallCircularRadius = 5.0;
  double mediumCircularRadius = 16.0;
  double largeCircularRadius = 32.0;

  BorderRadiusGeometry get smallestRadius {
    return BorderRadius.all(Radius.circular(smallestCircularRadius));
  }

  BorderRadiusGeometry get smallRadius {
    return BorderRadius.all(Radius.circular(smallCircularRadius));
  }

  BorderRadiusGeometry get mediumRadius {
    return BorderRadius.all(Radius.circular(mediumCircularRadius));
  }

  BorderRadiusGeometry get largeRadius {
    return BorderRadius.all(Radius.circular(largeCircularRadius));
  }

  //Height
  double get smallHeight {
    return 48;
  }

  double get mediumHeight {
    return 52;
  }

  double get largeHeight {
    return 56;
  }

  //Shadow
  normalShadow(Color color) {
    return [
      BoxShadow(
        color: color.withOpacity(0.4),
        blurRadius: 6.0,
        spreadRadius: 4,
      ),
    ];
  }

  //Padding
  EdgeInsetsGeometry get normalPadding {
    return EdgeInsets.all(10.0);
  }

  EdgeInsetsGeometry get mediumPadding {
    return EdgeInsets.all(16.0);
  }

  EdgeInsetsGeometry get largePadding {
    return EdgeInsets.all(20.0);
  }

  //Border
  BoxBorder get defaultBorder {
    return Border.all(
      width: 1.0,
      color: Colors.grey[300]!,
    );
  }

  TextStyle get fontFamily {
    return GoogleFonts.notoSans();
  }
}

var theme = ApplicationTheme();
