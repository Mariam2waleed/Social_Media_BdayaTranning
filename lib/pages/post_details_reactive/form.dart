// import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'form.gform.dart';

@ReactiveFormAnnotation()
@FormGroupAnnotation<PostDetailsReactiveModel>()
class PostDetailsReactiveModel {
  const PostDetailsReactiveModel({
    @FormControlAnnotation<String>() this.name,
    @FormArrayAnnotation<Address>() this.addresses = const [],
  });

  final String? name;
  final List<Address> addresses;
}

@ReactiveFormAnnotation()
@FormGroupAnnotation<Address>()
class Address {
  Address({
    @FormControlAnnotation<String>() required this.id,
    @FormControlAnnotation<String>() required this.line1,
    @FormControlAnnotation<String>() required this.line2,
    @FormControlAnnotation<String>() required this.postalCode,
  });

  final String id;
  final String? line1;
  final String? line2;
  final String? postalCode;
}
