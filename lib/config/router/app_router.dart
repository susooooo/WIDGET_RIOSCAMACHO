import 'package:go_router/go_router.dart';
import 'package:widget_rioscamacho/presentation/screen/buttons/buttons_screen.dart';
import 'package:widget_rioscamacho/presentation/screen/cards/cards_screen.dart';
import 'package:widget_rioscamacho/presentation/screen/home/home_screen.dart';

// GoRouter configuration 
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder:(context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder:(context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder:(context, state) => const CardsScreen(),
    ),
  ],
);