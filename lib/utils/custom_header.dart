import 'package:flutter/material.dart';


import 'Styles.dart';
import 'color.dart';

class CustomHeader {
  static getHeader({String title, String subTitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Image.asset(Images.LOGIN_LOGO),
          _size(height: 20),
          Text(
            title ?? "",
            style: Styles.bold(size: 20),
          ),
          _size(),
          Text(
            subTitle ?? "",
            style: Styles.regular(color: ColorConstants.GREY),textAlign: TextAlign.center,
          ),
          _size(height: 5),
        ],
      ),
    );
  }

  static _size({double height = 10}) {
    return SizedBox(
      height: height,
    );
  }
}
