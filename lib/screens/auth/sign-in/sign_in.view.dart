library signinview;

import 'package:acquest/routes/index.dart';

part 'package:acquest/screens/auth/sign-in/components/sign_in.body.dart';

class SignInView extends StatelessWidget {
  static const routeName = '/signin-view';
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignInViewModel>.reactive(
        builder: (context, model, child) {
          return const Scaffold(
            backgroundColor: white,
            body: _SignInBody(),
          );
        },
        onModelReady: (model) {
          model.initialise(context: context);
        },
        viewModelBuilder: () => SignInViewModel());
  }
}
