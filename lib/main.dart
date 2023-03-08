import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/features/authentication/presentation/login/login.dart';
import 'src/features/authentication/presentation/signup/sign_up.dart';
import 'src/features/home/presentation/home.dart';
import 'src/features/onboarding/onboarding.dart';
import 'src/routes/route_names.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // AppwriteInstance.client
  //     .setEndpoint('https://appwrite.koustav.dev/v1')
  //     .setProject('6408b73727d253270c65')
  //     .setSelfSigned(status: true);
  runApp(
    const ProviderScope(child: MyApp()),
  );
  doWhenWindowReady(() {
    const initialSize = Size(1280, 720);
    const minSize = Size(780, 680);
    appWindow.minSize = minSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => FluentApp(
        debugShowCheckedModeBanner: false,
        title: 'Chamting',
        theme: ThemeData(
          activeColor: Colors.teal,
          accentColor: Colors.teal,
        ),
        initialRoute: AppRoute.onBoarding,
        routes: {
          AppRoute.onBoarding: (context) => const OnBoardingScreen(),
          AppRoute.home: (context) => const HomeScreen(),
          AppRoute.signUp: (context) => const SignUpScreen(),
          AppRoute.login: (context) => const LoginScreen(),
        },
      ),
    );
  }
}
