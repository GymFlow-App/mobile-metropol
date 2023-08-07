import 'package:flutter/material.dart';
import 'package:metropol/core/constants/app_constants.dart';
import 'package:metropol/core/keys/global_key.dart';
import 'package:metropol/core/utils/app_providers.dart';
import 'package:metropol/core/utils/screen_size.dart';
import 'package:metropol/core/utils/route_manager/domain/router.dart' as router;
import 'package:metropol/core/init/injection_container.dart' as locator;
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await locator.init();

  runApp(
    MultiProvider(
      providers: AppProvider.providers,
      child: const MetropolApp(),
    ),
  );
}

class MetropolApp extends StatelessWidget {
  const MetropolApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      navigatorKey: GlobalContextKey.instance.globalKey,
      onGenerateRoute: router.generateRoute,
    );
  }
}
