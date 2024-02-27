import 'package:async/async.dart';
import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:social_media/get_it_config.dart';
import 'package:social_media/services/cache_service.dart';
import 'package:social_media/services/categories_service.dart';
import 'package:social_media/services/user_service.dart';

@lazySingleton
class InitService {
  final memoizer = AsyncMemoizer<void>();

  Future<void> init() {
    return memoizer.runOnce(
      () => Future.wait([
        _actualInit(),
        Future.delayed(const Duration(seconds: 3), () {}),
      ]),
    );
  }

  Future<void> _actualInit() async {
    await getIt<CacheServiceBase>().init();
    await getIt<UserService>().init();
    await getIt<CategoriesService>().init();
  }
}
