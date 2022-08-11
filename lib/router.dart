import 'package:auto_route/annotations.dart';
import 'package:teste_flutter_desktop/screens/main_screen.dart';
import 'package:teste_flutter_desktop/src/auth/presentation/pages/login_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainScreenPage, initial: true),
    AutoRoute(page: LoginPage)
  ],
)
class $AppRouter {}
