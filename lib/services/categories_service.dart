import 'dart:convert';

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:bdaya_shared_value/bdaya_shared_value.dart';
import 'package:social_media/gen/bdaya/social_training_local/v1/category.pb.dart';
import 'package:social_media/services/cache_service.dart';
import 'package:social_media/services/grpc_service.dart';

@lazySingleton
class CategoriesService {
  CategoriesService(this.cacheService, this.grpcService);
  final CacheServiceBase cacheService;
  final GrpcService grpcService;

  Future<void> init() async {
    const categories = 'categories';
    final cachedCategories = cacheService.getString(categories);
    if (cachedCategories != null) {
      //
      final parsedCategories = jsonDecode(cachedCategories) as List<dynamic>;
      categoriesListRx.$ = parsedCategories
          .map((e) => CategoryDto.fromJson(e as String))
          .toList();
    }
    // grpcService.categoriesApi.listCategories();
    final backendCategories = <CategoryDto>[];
    categoriesListRx.$ = backendCategories;
    await cacheService.setString(
      categories,
      jsonEncode(backendCategories.map((e) => e.toProto3Json()).toList()),
    );
  }

  final categoriesListRx = SharedValue<List<CategoryDto>>(value: []);
}
