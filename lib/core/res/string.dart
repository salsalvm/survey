//this class contain whole strings in this project . its hold every string widgets are access in this class
//we can easily to change in here and reflect our ui
//we can access with any string with help of this class name
//every strings are relatted with that content name.

// ---------------------------  key-notes -------------------------------//

// *cSomeString = contentSomeString

class KString {
  static const String email = 'Email :  ';
  static const String submit = 'Submit';
  static const String noNotes = 'no notes available';

  static String loginSucces = 'login successful';
  static String logoutSucces = 'logout successful';
  static String registerSuccessfully = 'Registration SuccesFully';
  static String mailFormateWrong = 'email formate is incorect';
  static String passwordResetSent = 'password reset link send to mail';
  static String userAlreadyExist= 'user already exist';
  static String fieldEmpty = 'field is empty';
  static String surveyAdded = 'survey added succesfully';
  static String suerveyUpdated = 'survey updated succesfully';

  static const String mobileFormField = 'Enter phone number';
  static const String userFormField = 'Enter your name';
  static const String errorName = 'Please enter a valid name';
  static const String errorEmptyName = 'Please enter minimum 3 letter';
  static const String registerButton = 'Register';
  static const String googleAuthButton = 'Login with Google';

  static const String cNoAccount = "You Don't have an account? ";
  static const String signupNow = 'Signup Now';

  static const String alreadyAUser = 'Already a user?';

  static const String signUpNow = 'Sign Up Now';

  static const String login = 'Login';

  static const String continueButton = 'Continue';
  static const String forgotPass = '  Forgot password?';
  static const String rememberMe = 'Remember Me';



  static const String signup = 'Sign Up';
  static const String emailFormField = 'Email id';

  static const String apply = 'Apply';
  static const String cAlreadyAccount = 'Already have an account? ';
  static const String loginNow = 'Login Now';

  static const String passwordFormField = 'Enter your password';
//----------error validation message strings----------//
  static const String errorMail = 'Please enter valid mail';
  static const String errorFillPhone = 'Please fill your phone number';
  static const String errorPassword = 'Please enter valid password';
  static const String errorPhone = 'Please enter valid mobile number';

  static const String errorEmptyMail = 'Please enter mail';
  static const String errorEmptyPhone = 'Please enter mobile number';
  static const String errorEmptyPassword = 'Please enter you password';
//----------Regex strings----------//

  static const String regexMail = '[a-zA-Z0-9@!£%^&+_*.?]';
  static const String regexPhone = '[0-9+]';
  static const String regexNumber = '[0-9]';
  static const String regexReferal = '[a-zA-Z0-9]';
}
