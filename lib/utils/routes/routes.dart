import 'package:go_router/go_router.dart';
import 'package:ticket/app_features/home_screen/home_screen.dart';


class Routes {
  static const String splashScreen = '/splashscreen';

  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
      initialLocation:splashScreen,
      routes: [
        GoRoute(
          path: splashScreen,
          builder: (context, state) => const HomeScreen(),
        ),
      ]);

}
