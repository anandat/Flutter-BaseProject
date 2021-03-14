import 'package:flutter/widgets.dart';

abstract class Strings {
  static const SERVER_DATE_YYYY_MM_DD_HH_MM_SS = "yyyy-MM-dd HH:mm:ss";

  String get welcomeBack => "Welcome back!";

  String get appName => "OnlineBooking";

  String get addLocation => "Add Location";

  String get submitf => "Submit";

  String get verify => "verify";

  String get setdefault => "Set by default";

  String get view => "view activity fees in your currency.";

  String get nootp => "Didn't receive the verification code?";

  String get eotp => "Enter OTP";

  String get emailPhone => "Email/Phone";

  String get eng => "English";

  String get arb => "Arabic";

  String get welcome => "Welcome";

  String get welcomeDetail => "Fill in your details to continue";

  String get password => "Password";

  String get login => "Login";

  static const NO_INTERNET_MESSAGE = "No internet connection.";

  String get regest => "Registration";

  String get loginViaEmail => "Login via registered email Id";

  String get somethingWentWrong => "Something Went Wrong";

  String get forgotPasswordWithQuestionMark => "Forgot Password?";

  String get orLoginWith => "Or login with";

  String get facebook => "Facebook";

  String get emptyCity => "Select a city";

  String get emptyState => "Select a state";

  String get emptyCountryCode => "Select a country code";

  String get emptyAddress => "Address field is mandatory";

  String get emptyZipCode => "Zip code is required";

  String get invalidZipCode => "Zip code must be number";

  String get emptyPassword => "Password field is mandatory";

  String get emptyOldPassword => "Old Password field is mandatory";

  String get emptyNewPassword => "New Password field is mandatory";

  String get google => "Google";

  String get emptyDropdown => "Please select an option";

  String get invalidPassword =>
      "Password must contain 8 characters or more with atleast 1 lowercase alphabet, 1 uppercase alphabet, 1 number and 1 special character";

  String get invalidOldPassword =>
      "Password must contain 8 characters or more with atleast 1 lowercase alphabet, 1 uppercase alphabet, 1 number and 1 special character";

  String get invalidNewPassword =>
      "Password must contain 8 characters or more with atleast 1 lowercase alphabet, 1 uppercase alphabet, 1 number and 1 special character";

  String get emptyDay => "Day is empty";

  String get emailId => "Email ID";

  String get emptyYear => "Year is empty";

  String get invalidDay => "Invalid day";

  String get invalidYear => "Invalid Year";

  get emailNotVerified => "Your email is not verified.";

  String get emptyPhone => "Phone number required";

  String get invalidPhone => "Phone number must be 8 to 14 digit";

  String get invalidLoginPassword => "Invalid password";

  String get emptyEmail => "Email is required";

  String get invalidEmail => "Invalid email";

  String get emptyFirstName => "First name is required";

  String get emptyName => "Name is required";

  String get invalidFirstName => "Invalid first name, only alphabet allowed";

  String get emptyLastName => "Last name is required";

  String get invalidLastName => "Invalid Last name, only alphabet allowed";

  String get invalidName => "Invalid name, only alphabet allowed";

  //signup

  String get signupr => "SIGN UP";

  String get welcomereg => "Welcome to online booking";

  String get welcomeregdetails =>
      "Register yourself by filling the below information";

  String get signuptap =>
      "Tapping on sign-up, I agree to all Terms and Conditions";

  String get areYouInfluencer => 'Are you an "Influencer" ?';

  String get rFrom => "If yes, fill form and endorsed activity. Fill Form";

  String get rLogin => "Are you an Service Provider? Log In";

  String get bestexp => "Get the best experience";

  String get forgottitle => "Forgot password";

  String get otp => "OTP verification";

  String get otpdetailsForgotPassword =>
      "We have sent you an OTP on Email / Phone to change the password. Please check and enter below";

  String get otpdetailsSignup =>
      "We have sent you a verification code on Email / Phone. Please check and enter below";

  String get changepassword => "Change password";

  String get changepassworddetails =>
      "Please set the new password for your account";

  String get forgotitledetails =>
      "Please enter your registered email address / phone number and we will send yo an OTP to reset password";

  String get bestexpdetails =>
      "to get the best experience you can change to preferred language";

  String get firstName => "First Name";

  get enterPassword => "Enter Password";

  get address => "Address";

  get addressshortcut => "Address 1";

  get addressshortcuts => "Address 2";

  get confirmPassword => "Confirm Password";

  get reEnterPassword => "Re Enter Password";

  get website => "WebSite";

  get landline => "LandLine";

  String get gender => "Gender";

  get birthDate => "Birth Date";

  get phone => "Phone";

  get aboutMe => "About me";

  get lastName => "Last Name";

  get phoneNumber => "Phone Number";

  String get gallery => "Gallery";

  String get camera => "Camera";

  String get cancel => "Cancel";

  String get ok => "Ok";

  String get no => "No";

  String get yes => "Yes";

  String get alert => "Alert";

  get emailOrPhone => "Email / Phone number";

  String get emptyEmailOrPhone => "Email or phone number is required";

  String get twitter => "Twitter";

  get areYouServiceProvider => "Are you a Service Provider?";

  get enterEmailOrPhone => "Enter Email / Phone number";

  get resendAgain => "Resend Again";

  get dontHaveAcc => "Don't have an account?";

  get fillForm => "Fill Form";

  get enterExpiryDate => "Enter Expiry Date";

  get next => "Next";

  String get snapchat => "Snapchat";

  get update => "UPDATE";

  get fullName => "Full Name";

  String get document => "Document";

  String get pending => "Pending";

  get featureComingSoon => "Feature coming soon";

  String get activityDetails => "Activity Details";

  String get descriptions => "Description";

  String get seatAvailablity => "Seat Availability";

  get selectCountry => "Select Country";

  String get checkout => "Checkout";

  String get termsAndConditions => "Terms & Conditions";

  String get agreeTnC =>  "I agree to all Terms and Conditions";

  get selectCategory => "Select Category";

  get selectSubCategory => "Select Sub-Category";

  String get basedOnSelectedCat => "Based on Selected Category";

  get addTitle => "Add Title";

  String get addDescription => "Add Description";

  get writeAboutActivity => "write about activity";

  get setFees => "Set Fees";

  get selectCurrency => "Set Currency";

  get ticketTypeSeatSession => "Type of Ticket (per seat/session)";

  get session => "Session";

  String get seatDateTime => "Seat, Date and Time";

  String get setAge => "Set Age";

  String get to => "TO";

  String get specificGender => "For Specific Gender";

  get location => "Location";

  String get additionalInfo => "Additional Information";

  get post => "POST";

  String get male => "Male";

  String get female => "Female";

  String get all => "All";

  get allowPermissions => "Please allow permission for better use of app.";

  String get atleastOneImageRequired => "Atleast one image is required";

  String get plzSelectCategory => "Please select category";

  String get plzSelectSubCategory => "Please select sub category";

  String get plzEnterTitle => "Please enter title";

  String get plzEnterDesc => "Please enter description";

  String get plzEnterFees => "Please enter fee";

  String get plzSelectCurrency => "Please select currency";

  String get plzSelectTicketType => "Please select ticket type";

  String get plzSelectSession => "Please select session";

  String get plzSelectSeatDateTime => "Please select Seat,Date and Time";

  String get plzEnterStartAge => "Please enter start age";

  String get plzEnterEndAge => "Please enter end age";

  String get plzSelectGender => "Please select gender";

  String get plzAddAddressLocation => "Please add address location";

  String get plzEnterAdditionalInfo => "Please enter any additional info";

  String get optional => "Optional";

  String get influencerProfile => "Influencer Profile";

  String get addYourThoughts => "Add Your Thoughts";

  get endorse => "ENDORSE";

  String get featured => "Featured";

  String get activityPostedBy => "Activity Posted by";

  get fillThoughtField => "Fill the thoughts field.";

  get writeHere => "write here...";

  String get seeEventsIn => "See events in:";

  String get pickLocation => "Pick a location";

  String get recentSearchedLocations => "Recent searched location:";

  String get whatsGoingIn => "What's Going in";

  String get setByDefault => "Set by default";

  get searchHere => "Search here";

  String get selectCategoryToGetActivity => "Select the category to get the activity if your choice";

  String get reason => "Reason";

  String get activities => "Activities";

  String get postedOn => "Posted on";

  get km => "KM";

  String get scanTicket => "Scan Ticket";

  String get endorsedBy => "Endorsed By-";

  String get addMoreDocument => "Add More Document";

  String get plzProvideDocuments => "Please Provide your Commercial Certificates or Emirates ID";

  String get takeAPhoto => "TAKE A PHOTO";

  get documentRequired => "Document is required";

  String get addNewActivity => "Add New Activity";

  String get createdOn => "Created on";

  String get status => "Status";

  String get completeProfile => "Complete Profile";

  String get myProfile => "My Profile";

  get selectLanguage => "Select Language";

  String get other => "Other";

  static Strings of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }
}
