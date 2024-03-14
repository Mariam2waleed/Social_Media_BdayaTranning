// import 'dart:ui';

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:social_media/app/view/app.dart';
import 'package:social_media/get_it_config.dart';
import 'package:social_media/pages/post_details_reactive/view.dart';
// import 'package:social_media/services/init_service.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Main App Tests', () {
    setUp(() async {
      Logger.root.onRecord.listen(bdayaOnRecordHandlerFactory());
      setPathUrlStrategy();

      getIt.allowReassignment = true;
      // Add cross-flavor configuration here
      configureDependencies(env: fake.name);
    });

    // testWidgets('App is working and init service is called',
    //     (WidgetTester tester) async {
    //   await tester.pumpWidget(const App());

    //   await tester.pumpAndSettle();

    //   final initService = getIt<InitService>();
    //   expect(initService.memoizer.hasRun, isTrue);
    // });

    testWidgets('Featured Product are displayed', (tester) async {
      await tester.pumpWidget(const App());

      await tester.pumpAndSettle();
      // Feature products:
      final productFinder = find.text('Featured products: 1');
      expect(productFinder, findsOneWidget);

      await tester.tap(
        productFinder,
        // kind: PointerDeviceKind.mouse,
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('Login'));
      await tester.pumpAndSettle();
      expect(find.byType(PostDetailsReactiveView), findsOneWidget);
    });
  });
}
