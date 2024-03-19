import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:injectable/injectable.dart';
// import 'package:protobuf/protobuf.dart';
import 'package:social_media/gen/bdaya/social_training/v1/service.pbgrpc.dart';

@lazySingleton
class GrpcService {
  final channle = GrpcOrGrpcWebClientChannel.toSingleEndpoint(
    host: 'localhost',
    port: 50051,
    transportSecure: false,
  );

  // RpcClient get client => RpcClient();

  PostServiceClient get postApi => PostServiceClient(channle);
}
