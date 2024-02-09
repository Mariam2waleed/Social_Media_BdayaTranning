import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:social_media/get_it_config.config.dart';

const fake = Environment('fake');

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies({String? env}) => getIt.init(environment: env);
