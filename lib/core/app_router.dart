import 'package:go_router/go_router.dart';
import '/presentation/home_welcome.dart';
import '../presentation/searchoption_screen.dart';
import '../features/camera/camera_preview_screen.dart';
import '../features/gallery/gallery_preview_screen.dart';
import '../features/gallery/gallery_grid_screen.dart';
import '../features/analysis/analysis_result_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomeWelcome()),
    GoRoute(path: '/camera', builder: (context, state) => const CameraScreen()),
    GoRoute(
      path: '/gallery-grid',
      builder: (context, state) => const GalleryGridScreen(),
    ),
    GoRoute(
      path: '/gallery-preview',
      builder: (context, state) {
        final assetPath = state.extra as String;
        return GalleryPreviewScreen(imageAssetPath: assetPath);
      },
    ),
    GoRoute(
      path: '/preview',
      builder: (context, state) {
        final imagePath = state.extra as String;
        return CameraPreviewScreen(imagePath: imagePath);
      },
    ),
    GoRoute(
      path: '/analysis',
      builder: (context, state) {
        final labels = state.extra as List<String>;
        return AnalysisResultScreen(labels: labels);
      },
    ),
  ],
);
