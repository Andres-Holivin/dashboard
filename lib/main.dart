import 'package:dashboard/feature/pages/dashboard_page.dart';
import 'package:dashboard/feature/pages/error_page.dart';
import 'package:dashboard/style_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Dashboard',
      theme: ThemeData(
          splashColor: Palette.kToLight[50],
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          primarySwatch: Palette.kToLight,
          scaffoldBackgroundColor: Palette.kToLightBackgroud),
    );
  }
}

final GoRouter _router = GoRouter(
  errorPageBuilder: (context, state) =>
      NoTransitionPage<void>(child: ErrorPage(state.error!)),
  routes: <GoRoute>[
    GoRoute(
        path: '/',
        pageBuilder: (context, state) => NoTransitionPage<void>(
              key: state.pageKey,
              child: DashboardPage(),
            )),
  ],
);
