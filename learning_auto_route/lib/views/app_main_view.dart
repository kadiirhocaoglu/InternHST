import 'package:flutter/material.dart';
import 'package:learning_auto_route/utils/routes/app_router.dart';
class AppMainView extends StatelessWidget {
   AppMainView({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}