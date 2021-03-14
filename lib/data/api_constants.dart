class ApiConstants {
  /**Server url*/
  ///todo change Env to production when release to the client
  ///For Developer
  static const PRODUCTION_BASE_URL = "https://vdm3qn0zz2.execute-api.ap-south-1.amazonaws.com/staging/api/v1/";
  //static const DEV_BASE_URL = "https://224e56e4db04.ngrok.io/v1/";
  static const DEV_BASE_URL = "https://vdm3qn0zz2.execute-api.ap-south-1.amazonaws.com/staging/api/v1/";



  //todo before share this change it to production

  ///APIs
  static const LOGIN = "user/login";
  static const FORGOT = "user/forgot-password";
  static const RESET = "user/reset-password";
  static const SIGNUP = "user/sign-up";
  static const SIGNUPOTP = "user/verify-signup-otp";
  static const UPDATEPROFILE = "user/profile";
  static const COUNTRYCODES = "user/country-codes";
  static const INFLUENCERLIST = "user/influencer-list";
  static const ACTIVITYLIST = "activity/list";
  static const CATEGORIES_LIST = "category/user-categories";
  static const SET_INTEREST = "user/intrested-category";
  static const VERIFY_FP_OTP ="user/verify-forgot-password-otp";
  static const ACTIVITYDETAILSLIST = "activity/details";
  static const CREATE_ACTIVITY = "service-provider/activity";

  //service provider

  static const SERVICE_PROVIDER_SIGN_UP = "service-provider/sign-up";
  static const GET_PROFILE ="user/profile";
  static const SOCIAL_SIGN_IN ="user/social-login";
  static const SP_ACTIVITY_DETAIL = "service-provider/activity";
  static const SP_ACTIVITY_LIST = "service-provider/activities-list";

}
