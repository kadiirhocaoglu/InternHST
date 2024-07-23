
import 'package:learning_auto_route/home/home_view.dart';
import 'package:learning_auto_route/home/profile_view.dart';
import 'package:learning_auto_route/home/settings_view.dart';

class NavigatorRoutes {
  static const paragfh = "/";
  final items = {
    paragfh: (context) => const HomePage(),
    NavigateRoutes.profile.withParaf: (context) => const ProfileView(),
    NavigateRoutes.settings.withParaf: (context) => const SettingsView(),
  };
}

enum NavigateRoutes { init, profile, settings }

extension NavigateRoutesExtension on NavigateRoutes {
  String get withParaf => "/$name";
}
