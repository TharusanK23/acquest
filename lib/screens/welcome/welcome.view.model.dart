import 'package:acquest/routes/index.dart';

class WelcomeViewModel extends BaseViewModel {
  Future<void> initialise({required BuildContext context}) async {}

  navigateToAuthView(BuildContext context, bool isSignIn) {
    if (isSignIn) {
      Navigator.of(context).pushNamed(SignInView.routeName);
    } else {
      print('object');
    }
  }
}
