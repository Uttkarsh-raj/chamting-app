import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'screens/register/register_view.dart';
import 'screens/signin/signin_view.dart';
import 'screens/signup/signup_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  doWhenWindowReady(() {
    const initialSize = Size(1100, 730);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Chamting',
      theme: ThemeData(
        activeColor: Colors.teal,
        accentColor: Colors.teal,
      ),
      initialRoute: RegisterView.routeName,
      routes: {
        RegisterView.routeName: (context) => const RegisterView(),
        SignInView.routeName: (context) => SignInView(),
        SignUpView.routeName: (context) => SignUpView(),
      },
    );
  }
}
