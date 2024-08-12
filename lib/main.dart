import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ticket/constant/api_end_points.dart';
import 'package:ticket/common/model/api_base_url.dart';
import 'package:ticket/utils/initial_binding/initial_binding.dart';
import 'package:ticket/utils/preferences/local_preferences.dart';
import 'package:ticket/utils/routes/routes.dart';
import 'app_config.dart';

void main({String? env}) async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final appConfig = await AppConfig().forEnvironment(env);
  initialBiniding();
  await LocalStorageUtils.init();

  runApp(MyApp(
    config: appConfig,
    sharedPreferences: sharedPreferences,
  ));
}

late ApiEndpoints apiEndpoints;
final appRoutes = Routes();

class MyApp extends StatefulWidget {
  const MyApp({
    required this.config,
    required this.sharedPreferences,
    super.key});
  final ApiBaseUrlModel config;
  final SharedPreferences sharedPreferences;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    apiEndpoints = ApiEndpoints(apiBaseUrlModel: widget.config);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ticket',
      // theme: ThemeData(fontFamily: 'baloo'),
      routeInformationParser: appRoutes.router.routeInformationParser,
      routeInformationProvider: appRoutes.router.routeInformationProvider,
      routerDelegate: appRoutes.router.routerDelegate,
    );
  }
}
