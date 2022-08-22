import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:micro_app_home/app/pages/micro_app_home_page_resolver.dart';
import 'package:micro_app_login/app/micro_app_login_page_resolver.dart';
import 'package:micro_app_stocks/app/micro_app_stocks_page_resolver.dart';
import 'package:micro_core/app/base_app.dart';
import 'package:micro_core/app/micro_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key);

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  Widget build(BuildContext context) {
    super.registerRoutes();
    return MaterialApp(
      title: 'Micro Front-End',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoutes,
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  List<MicroApp> get microApps {
    return [
      MicroAppHomePageResolver(),
      MicroAppLoginPageResolver(),
      MicroAppStocksPageResolver(),
    ];
  }
}
