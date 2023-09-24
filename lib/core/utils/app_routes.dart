import 'package:go_router/go_router.dart';
import 'package:weather/features/home/views/home_view.dart';
import 'package:weather/features/on%20boarding/views/on_boarding_view.dart';

abstract class AppRoutes {
  static const kHomeView = '/kHomeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
