import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media/get_it_config.dart';

abstract class CacheServiceBase {
  Future<void> init();
  // SharedPreferences get instances;
  String? getString(String key);

  Future<void> setString(String key, String? value);
}

@prod
@LazySingleton(as: CacheServiceBase)
class RealCacheServiceBase extends CacheServiceBase {
  @override
  Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  SharedPreferences? _instance;

  @override
  String? getString(String key) {
    assert(_instance != null, 'Must call init before accessing instance');
    return _instance?.getString(key);
  }

  @override
  Future<void> setString(String key, String? value) async {
    final i = _instance;
    assert(i != null, 'Must call init before accessing instance');
    if (i == null) {
      return;
    }
    if (value != null) {
      await i.setString(key, value);
    } else {
      await i.remove(key);
    }
  }
}

@fake
@LazySingleton(as: CacheServiceBase)
class MockCacheServiceBase extends CacheServiceBase {
  final _cacheMap = <String, String>{};
  @override
  Future<void> init() async {}

  @override
  String? getString(String key) {
    return _cacheMap[key];
  }

  @override
  Future<void> setString(String key, String? value) async {
    if (value == null) {
      _cacheMap.remove(key);
    } else {
      _cacheMap[key] = value;
    }
  }
}
