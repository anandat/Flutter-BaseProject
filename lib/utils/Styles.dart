import 'package:flutter/material.dart';

import 'color.dart';

class Styles {

  static const _MontserratBold = "Montserrat_Bold";
  static const _MontserratSemiBold = "Montserrat_SemiBold";
  static const _MontserratMedium = "Montserrat_Medium";
  static const _MontserratRegular = "Montserrat_Regular";
  static const _MontserratBlack = "Montserrat_Black";
  static const _MontserratLight = "Montserrat_Light";

  static bold({double size = 14,Color color = ColorConstants.BLACK}) {
    return TextStyle(
      fontSize: size,
      fontFamily: _MontserratBold,
      color: color,
      fontWeight: FontWeight.bold
    );
  }
  static semiBold({double size = 14,Color color = ColorConstants.BLACK}) {
    return TextStyle(
      fontSize: size,
      fontFamily: _MontserratSemiBold,
      color: color,
    );
  }
  static regular({double size = 12,Color color = ColorConstants.BLACK}) {
    return TextStyle(
      fontSize: size,
      fontFamily: _MontserratRegular,
      color: color,

    );
  }
  static medium({double size = 14,Color color = ColorConstants.BLACK}) {
    return TextStyle(
      fontSize: size,
      fontFamily: _MontserratMedium,
      color: color,
    );
  }
  static light({double size = 14,Color color = ColorConstants.WHITE}) {
    return TextStyle(
      fontSize: size,
      fontFamily: _MontserratMedium,
      color: color,
    );
  }
  static extraBoldBlack({double size = 14,Color color = ColorConstants.BLACK}) {
    return TextStyle(
      fontSize: size,
      fontFamily: _MontserratBlack,
      color: color,
    );
  }


  static boldWhite({double size = 14}) {
    return TextStyle(
        fontSize: size, fontFamily: _MontserratBold, color: ColorConstants.WHITE);
  }


  static errorRegular({double size = 10}) {
    return TextStyle(
        fontSize: size, fontFamily: _MontserratRegular, color: Colors.red);
  }

}
