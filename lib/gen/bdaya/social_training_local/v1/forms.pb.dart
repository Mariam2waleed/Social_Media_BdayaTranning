//
//  Generated code. Do not modify.
//  source: bdaya/social_training_local/v1/forms.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:social_media/gen/google/protobuf/wrappers.pb.dart' as $2;

class PostDetailsDto extends $pb.GeneratedMessage {
  factory PostDetailsDto({
    $core.String? id,
    $2.StringValue? name,
    $core.Iterable<AddressDto>? addresses,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (addresses != null) {
      $result.addresses.addAll(addresses);
    }
    return $result;
  }
  PostDetailsDto._() : super();
  factory PostDetailsDto.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory PostDetailsDto.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    _omitMessageNames ? '' : 'PostDetailsDto',
    package: const $pb.PackageName(
      _omitMessageNames ? '' : 'bdaya.social_training_local.v1',
    ),
    createEmptyInstance: create,
  )
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$2.StringValue>(
      2,
      _omitFieldNames ? '' : 'name',
      subBuilder: $2.StringValue.create,
    )
    ..pc<AddressDto>(
      3,
      _omitFieldNames ? '' : 'addresses',
      $pb.PbFieldType.PM,
      subBuilder: AddressDto.create,
    )
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostDetailsDto clone() => PostDetailsDto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostDetailsDto copyWith(void Function(PostDetailsDto) updates) =>
      super.copyWith((message) => updates(message as PostDetailsDto))
          as PostDetailsDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostDetailsDto create() => PostDetailsDto._();
  PostDetailsDto createEmptyInstance() => create();
  static $pb.PbList<PostDetailsDto> createRepeated() =>
      $pb.PbList<PostDetailsDto>();
  @$core.pragma('dart2js:noInline')
  static PostDetailsDto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostDetailsDto>(create);
  static PostDetailsDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $2.StringValue get name => $_getN(1);
  @$pb.TagNumber(2)
  set name($2.StringValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
  @$pb.TagNumber(2)
  $2.StringValue ensureName() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<AddressDto> get addresses => $_getList(2);
}

class AddressDto extends $pb.GeneratedMessage {
  factory AddressDto({
    $core.String? id,
    $2.StringValue? line1,
    $2.StringValue? line2,
    $2.StringValue? postalCode,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (line1 != null) {
      $result.line1 = line1;
    }
    if (line2 != null) {
      $result.line2 = line2;
    }
    if (postalCode != null) {
      $result.postalCode = postalCode;
    }
    return $result;
  }
  AddressDto._() : super();
  factory AddressDto.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory AddressDto.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    _omitMessageNames ? '' : 'AddressDto',
    package: const $pb.PackageName(
      _omitMessageNames ? '' : 'bdaya.social_training_local.v1',
    ),
    createEmptyInstance: create,
  )
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$2.StringValue>(
      2,
      _omitFieldNames ? '' : 'line1',
      subBuilder: $2.StringValue.create,
    )
    ..aOM<$2.StringValue>(
      3,
      _omitFieldNames ? '' : 'line2',
      subBuilder: $2.StringValue.create,
    )
    ..aOM<$2.StringValue>(
      4,
      _omitFieldNames ? '' : 'postalCode',
      subBuilder: $2.StringValue.create,
    )
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddressDto clone() => AddressDto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddressDto copyWith(void Function(AddressDto) updates) =>
      super.copyWith((message) => updates(message as AddressDto)) as AddressDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddressDto create() => AddressDto._();
  AddressDto createEmptyInstance() => create();
  static $pb.PbList<AddressDto> createRepeated() => $pb.PbList<AddressDto>();
  @$core.pragma('dart2js:noInline')
  static AddressDto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddressDto>(create);
  static AddressDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $2.StringValue get line1 => $_getN(1);
  @$pb.TagNumber(2)
  set line1($2.StringValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLine1() => $_has(1);
  @$pb.TagNumber(2)
  void clearLine1() => clearField(2);
  @$pb.TagNumber(2)
  $2.StringValue ensureLine1() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.StringValue get line2 => $_getN(2);
  @$pb.TagNumber(3)
  set line2($2.StringValue v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLine2() => $_has(2);
  @$pb.TagNumber(3)
  void clearLine2() => clearField(3);
  @$pb.TagNumber(3)
  $2.StringValue ensureLine2() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.StringValue get postalCode => $_getN(3);
  @$pb.TagNumber(4)
  set postalCode($2.StringValue v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPostalCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostalCode() => clearField(4);
  @$pb.TagNumber(4)
  $2.StringValue ensurePostalCode() => $_ensure(3);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
