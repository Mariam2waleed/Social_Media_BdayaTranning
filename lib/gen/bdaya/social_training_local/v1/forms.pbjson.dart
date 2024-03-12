//
//  Generated code. Do not modify.
//  source: bdaya/social_training_local/v1/forms.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use postDetailsDtoDescriptor instead')
const PostDetailsDto$json = {
  '1': 'PostDetailsDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'name'},
    {'1': 'addresses', '3': 3, '4': 3, '5': 11, '6': '.bdaya.social_training_local.v1.AddressDto', '10': 'addresses'},
  ],
};

/// Descriptor for `PostDetailsDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDetailsDtoDescriptor = $convert.base64Decode(
    'Cg5Qb3N0RGV0YWlsc0R0bxIOCgJpZBgBIAEoCVICaWQSMAoEbmFtZRgCIAEoCzIcLmdvb2dsZS'
    '5wcm90b2J1Zi5TdHJpbmdWYWx1ZVIEbmFtZRJICglhZGRyZXNzZXMYAyADKAsyKi5iZGF5YS5z'
    'b2NpYWxfdHJhaW5pbmdfbG9jYWwudjEuQWRkcmVzc0R0b1IJYWRkcmVzc2Vz');

@$core.Deprecated('Use addressDtoDescriptor instead')
const AddressDto$json = {
  '1': 'AddressDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'line1', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'line1'},
    {'1': 'line2', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'line2'},
    {'1': 'postal_code', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'postalCode'},
  ],
};

/// Descriptor for `AddressDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressDtoDescriptor = $convert.base64Decode(
    'CgpBZGRyZXNzRHRvEg4KAmlkGAEgASgJUgJpZBIyCgVsaW5lMRgCIAEoCzIcLmdvb2dsZS5wcm'
    '90b2J1Zi5TdHJpbmdWYWx1ZVIFbGluZTESMgoFbGluZTIYAyABKAsyHC5nb29nbGUucHJvdG9i'
    'dWYuU3RyaW5nVmFsdWVSBWxpbmUyEj0KC3Bvc3RhbF9jb2RlGAQgASgLMhwuZ29vZ2xlLnByb3'
    'RvYnVmLlN0cmluZ1ZhbHVlUgpwb3N0YWxDb2Rl');

