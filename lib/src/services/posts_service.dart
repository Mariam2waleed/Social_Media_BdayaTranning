import 'package:injectable/injectable.dart';
import 'package:social_media/gen/bdaya/social_training_local/v1/forms.pb.dart';
import 'package:social_media/gen/google/protobuf/wrappers.pb.dart';
import 'package:uuid/v4.dart';

@lazySingleton
class PostsService {
  Future<PostDetailsDto?> getPostById(String id) async {
    // final addressIds = ;
    return PostDetailsDto(
      id: id,
      name: StringValue(value: 'post $id'),
      addresses: [
        for (var i = 0; i <3; i++) 
        AddressDto(
          id: const UuidV4().generate(),
          line1: StringValue(value: 'address $i line1 value $id'),
          line2: StringValue(value: 'address $i line2 value $id'),
          postalCode: StringValue(value: 'address $i postal code value $id'),
        ),
      ],
    );
  }
}
