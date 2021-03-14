

class UserSession {
  static String accessToken;
  static String refreshToken;
  static String firstName;
  static String lastName;
  static String firebaseToken;
  static String iosDeviceToken;
  static String endPoint;
  static String image;
  static String email;
  static bool isProfileVerified;
  static int notificationCount;
  static String socialEmail;
  static String socialToken;
  static String socialFirstName;
  static String socialLastName;
  static String socialImageUrl;
  static bool isWalkThroughComplete = false;
  static int userId ;
  static int userType ;
  static int isFirstLogin;
  //static bool isProfileVerified;

  static int socialType;

  static String address = "";

  static clearSession() {
    address = null;
    accessToken = null;
    accessToken = null;
    refreshToken = null;
    endPoint = null;
    firstName = null;

    lastName = null;
    image = null;
    isProfileVerified = null;

    email = null;
    isFirstLogin = -1;
    socialEmail = null;
    socialToken = null;
    socialFirstName = null;
    socialLastName = null;
    notificationCount = 0;
    socialType = 0;
    socialImageUrl = null;
    isWalkThroughComplete = true;
  }

  /*UserSession() {
    if (Preference.exists(PreferenceKey.USER_ID) &&
        Preference.getInt(PreferenceKey.USER_ID) != null) {
      userId = Preference.getInt(PreferenceKey.USER_ID);
    }
    if (Preference.exists(PreferenceKey.UserType) &&
        Preference.getInt(PreferenceKey.UserType) != null) {
      userType = Preference.getInt(PreferenceKey.UserType);
    }
    if (Preference.exists(PreferenceKey.IS_FIRST_LOGIN) &&
        Preference.getInt(PreferenceKey.IS_FIRST_LOGIN) != null) {
      isFirstLogin = Preference.getInt(PreferenceKey.IS_FIRST_LOGIN);
    }
    if (Preference.exists(Preference.IOS_TOKEN) &&
        Preference.getString(Preference.IOS_TOKEN) != null) {
      iosDeviceToken = Preference.getString(Preference.IOS_TOKEN);
    }

    if (Preference.exists(PreferenceKey.FIREBASE_TOKEN) &&
        Preference.getString(PreferenceKey.FIREBASE_TOKEN) != null) {
      firebaseToken = Preference.getString(PreferenceKey.FIREBASE_TOKEN);
    }
    if (Preference.exists(PreferenceKey.User_EMAIL) &&
        Preference.getString(PreferenceKey.User_EMAIL) != null) {
      email = Preference.getString(PreferenceKey.User_EMAIL);
    }
    if (Preference.getString(PreferenceKey.ACCESS_TOKEN) != null) {
      accessToken = Preference.getString(PreferenceKey.ACCESS_TOKEN);
    }

    if (Preference.getString(PreferenceKey.User_First_Name) != null) {
      firstName = Preference.getString(PreferenceKey.User_First_Name);
    }

    if (Preference.getString(PreferenceKey.REFRESH_TOKEN) != null) {
      refreshToken = Preference.getString(PreferenceKey.REFRESH_TOKEN);
    }
    if (Preference.getBool(PreferenceKey.IS_PROFILE_VERIFIED) != null) {
      isProfileVerified = Preference.getBool(PreferenceKey.IS_PROFILE_VERIFIED);
    }

  }*/
}
