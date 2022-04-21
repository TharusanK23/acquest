import 'package:acquest/route.dart';
import 'package:acquest/routes/index.dart';

void main() {
  runApp(const AcquestApp());
}

class AcquestApp extends StatelessWidget {
  const AcquestApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: APP_FONT_FAMILY,
      ),
      routes: Routes.routes,
      home: const WelcomeView()
    );
  }
}
