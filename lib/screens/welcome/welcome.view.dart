library welcomeview;

import 'package:acquest/routes/index.dart';

part 'package:acquest/screens/welcome/components/welcome.body.dart';

class WelcomeView extends StatelessWidget {
  static const routeName = '/welcome-view';
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeViewModel>.reactive(
        builder: (context, model, child) {
          return const Scaffold(
            backgroundColor: white,
            body: _WelcomeBody(),
          );
        },
        onModelReady: (model) {
          model.initialise(context: context);
        },
        viewModelBuilder: () => WelcomeViewModel());
  }
}
