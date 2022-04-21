
import 'package:acquest/routes/index.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    WelcomeView.routeName: (context) => const WelcomeView(),
    SignInView.routeName:(context) => const SignInView()
  };
}