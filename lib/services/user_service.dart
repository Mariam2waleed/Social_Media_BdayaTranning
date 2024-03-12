import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:oidc/oidc.dart';
// import 'package:oidc_default_store/oidc_default_store.dart';
// import 'package:bdaya_shared_value/bdaya_shared_value.dart';
// import 'package:injectable/injectable.dart';
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
  // final OidcUserManager userManager = OidcUserManager.lazy(
  //   discoveryDocumentUri: OidcUtils.getOpenIdConfigWellKnownUri(
  //     Uri.parse('http://demo.duendesoftware.com'),
  //   ),
  //   clientCredentials: clientCredentials,
  //   store: OidcDefaultStore(),
  //   settings: OidcUserManagerSettings(),
  // );

  final userRx = SharedValue<OidcUser?>(value: null);

  @override
  Future<void> init() async {
    //
    Logger('[RealUserService]').info('Init called');
    // await userManager.init();
    // userManager.userChanges().listen((event) {
      // currentUserIdRx.$ = event?.uid;
    // });
    // await userManager.init();
  }

  @override
  Future<void> login() async {
    try {
      // final OidcUser? user = await userManager.loginAuthorizationCodeFlow();
      //  user.token.accessToken;
      // logger.info('user login success, ${user?.uid}');
    } on OidcException catch (e) {
      logger.severe('error occurred while login', e);
    }
  }

  @override
  Future<void> logout() async {
    // await userManager.logout();
  }
}
