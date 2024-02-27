import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:bdaya_shared_value/bdaya_shared_value.dart';
import 'package:injectable/injectable.dart';
import 'package:social_media/get_it_config.dart';

abstract class UserService {
  final currentUser = SharedValue<String?>(value: null);
 final logger = Logger('[UserService]');
  Future<void> init();
}

@fake
@LazySingleton(as: UserService)
class FakeUserService extends UserService {
  @override
  Future<void> init() async {
    // 
    Logger('[FakeUserService]').info('Init called');
  }
}

@prod
@LazySingleton(as: UserService)
class RealUserService extends UserService {
  @override
  Future<void> init() async {
    //
    Logger('[RealUserService]').info('Init called');
  }
}
