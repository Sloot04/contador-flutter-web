import 'package:fluro/fluro.dart';

import 'package:bases_web/ui/views/counter_view.dart';
import '../ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/sateful',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/sateful/:base',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/provider',
      handler: _counterProviderHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = _pageNotFound;
  }

  // Handlers
  static final Handler _counterHandler =
      Handler(handlerFunc: (context, params) {
    return CounterView(base: params['base']?[0] ?? '5');
  });

  static final Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) {
    return CounterProviderView(base: params['q']?[0] ?? '10');
  });

// 404
  static final Handler _pageNotFound =
      Handler(handlerFunc: (_, __) => const View404());
}
