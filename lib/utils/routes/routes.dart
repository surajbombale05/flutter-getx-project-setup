import 'package:go_router/go_router.dart';
import 'package:ticket/app_features/home_screen/home_screen.dart';


class Routes {
  static const String homeScreen = '/home-screen';

  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
      initialLocation:homeScreen,
      routes: [
        GoRoute(
          path: homeScreen,
          builder: (context, state) => const HomeScreen(),
        ),
      ]);

}
