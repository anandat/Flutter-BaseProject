import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'Styles.dart';
import 'color.dart';

class Utility {
  static Future<bool> checkNetwork() async {
    bool isConnected = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        isConnected = true;
      }
    } on SocketException catch (_) {
      print('not connected');

      isConnected = false;
    }
    return isConnected;
  }

  static void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }


  var currentLocation;

  static void showSnackBar(
      {String message,
        @required BuildContext scaffoldContext,
        int miliSec = 1500}) {
    if (scaffoldContext != null)
      Scaffold.of(scaffoldContext).showSnackBar(SnackBar(
          duration: Duration(milliseconds: miliSec),
          content: Text(
            message ?? "",
            style: Styles.boldWhite(),
          ),
          backgroundColor: ColorConstants.BLACK));
  }



  static String convertDate(String serverFormat, String date, String newFormat,
      {bool isUTC = false}) {
    DateFormat format = DateFormat(serverFormat);
    DateTime time = format.parse(date, isUTC);
    int _miliSecond = time.toLocal().millisecondsSinceEpoch;

    return DateFormat(newFormat)
        .format(DateTime.fromMicrosecondsSinceEpoch(_miliSecond * 1000));
  }

  static String convertTime24hrFormat(String time){
    DateTime resultTime= DateFormat("hh:mma").parse(time); // think this will work better for you
    return DateFormat("HH:mm:ss").format(resultTime);
  }

  static String convertDateFormat(DateTime date) {
    var formatter = new DateFormat('dd/MM/yyyy');
    String formatted = formatter.format(date);
    return formatted;
  }

  static String convertDateFormatFromServerFormat(DateTime date) {
    var formatter = new DateFormat('yyyy-MM-dd');
    String formatted = formatter.format(date);
    return formatted;
  }

  static String convertSelectedCalendarDate(DateTime date) {
    var formatter = new DateFormat('EEEE, MMM dd, yyyy');
    String formatted = formatter .format(date);
    return formatted;
  }

  static String convertDateFormatYYYYMMDD(String date) {

    var inputFormat = DateFormat("dd/MM/yyyy");
    var date1 = inputFormat.parse(date);

    var outputFormat = DateFormat("yyyy-MM-dd");
    var date2String = outputFormat.format(date1);

    return date2String;
  }

  static int getMilliSec(String serverFormat, String date,
      {bool isUTC = false}) {
    DateFormat format = DateFormat(serverFormat);
    DateTime time = format.parse(date, isUTC);
    return time.toLocal().millisecondsSinceEpoch;
  }

  static int getDeviceType() {
    if (Platform.isAndroid)
      return 1;
    else
      return 2;
  }

  static Future waitFor(int seconds) async {
    await Future.delayed(Duration(seconds: seconds));
  }

  static Future waitForMili(int mili) async {
    await Future.delayed(Duration(milliseconds: mili));
  }

  /*static Future<String> getDeviceID() async {
    String deviceID;
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceID = build.androidId; //UUID for Android
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceID = data.identifierForVendor; //UUID for iOS
      }
    } on PlatformException {
      print('Failed to get platform version');
    }
    return deviceID;
  }*/



  static Widget iconFromImage(
      {@required String image,
        Color color,
        double size,
        double elevation = 2}) {
    return Wrap(
      children: <Widget>[
        Card(
          elevation: elevation,
          child: Image.asset(
            image,
            color: color,
            width: size,
            height: size,
          ),
        ),
      ],
    );
  }







  static int getUserIdByToken({String token}) {
    if (token == null) return -1;
    Map<String, dynamic> _data = _parseJwtPayLoad(token);
    return _data['user_id'];
  }

  static Map<String, dynamic> _parseJwtPayLoad(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }

    return payloadMap;
  }

  static String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }
}
