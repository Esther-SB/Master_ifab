import 'package:go_router/go_router.dart';
import 'package:master_ifab/presentation/providers/sensores/gyroscope_sphera_dart.dart';
import 'package:master_ifab/presentation/screens/screens.dart';
import 'package:master_ifab/presentation/screens/theme_mutante/theme_mutante_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute( 
    path: '/',
    builder: (context, state) => const DomusScreen(),
    ),

    GoRoute( 
    path: '/numerator-river',
    builder: (context, state) => const NumeratorScreen(),
    ),

    GoRoute( 
    path: '/videos',
    builder: (context, state) => const VideosScreen(),
    ),

  GoRoute( 
    path: '/bands',
    builder: (context, state) => const BandsScreen(),
    ),

  GoRoute( 
    path: '/theme-mutante',
    builder: (context, state) => const ThemeMutanteScreen(),
    ),

  GoRoute( 
    path: '/sensors',
    builder: (context, state) => const SensoresScreen(),
    ),

    GoRoute( 
    path: '/gyroscope',
    builder: (context, state) => const GyroscopeSpheraScreen(),
    ),

  ]
  );