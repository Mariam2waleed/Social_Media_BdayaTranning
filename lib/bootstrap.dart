import 'dart:async';
import 'dart:developer';

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:social_media/get_it_config.dart';
import 'package:social_media/get_it_config.config.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Logger.root.onRecord.listen(bdayaOnRecordHandlerFactory());

  getIt.allowReassignment = true;

  // Add cross-flavor configuration here
  configureDependencies(env: prod.name);

  runApp(await builder());
}
