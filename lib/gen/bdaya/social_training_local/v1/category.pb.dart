//
//  Generated code. Do not modify.
//  source: bdaya/social_training_local/v1/category.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../social_training/v1/common.pbenum.dart' as $1;

class CategoryDto extends $pb.GeneratedMessage {
  factory CategoryDto({
    $core.String? id,
    $core.String? name,
    $core.String? imageUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    return $result;
  }
  CategoryDto._() : super();
  factory CategoryDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryDto', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training_local.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'imageUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryDto clone() => CategoryDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryDto copyWith(void Function(CategoryDto) updates) => super.copyWith((message) => updates(message as CategoryDto)) as CategoryDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryDto create() => CategoryDto._();
  CategoryDto createEmptyInstance() => create();
  static $pb.PbList<CategoryDto> createRepeated() => $pb.PbList<CategoryDto>();
  @$core.pragma('dart2js:noInline')
  static CategoryDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryDto>(create);
  static CategoryDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imageUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imageUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImageUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageUrl() => clearField(3);
}

class TestOptions extends $pb.GeneratedMessage {
  factory TestOptions({
    $1.SortDirection? currentSortDirection,
  }) {
    final $result = create();
    if (currentSortDirection != null) {
      $result.currentSortDirection = currentSortDirection;
    }
    return $result;
  }
  TestOptions._() : super();
  factory TestOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training_local.v1'), createEmptyInstance: create)
    ..e<$1.SortDirection>(1, _omitFieldNames ? '' : 'currentSortDirection', $pb.PbFieldType.OE, defaultOrMaker: $1.SortDirection.SORT_DIRECTION_UNSPECIFIED, valueOf: $1.SortDirection.valueOf, enumValues: $1.SortDirection.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestOptions clone() => TestOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestOptions copyWith(void Function(TestOptions) updates) => super.copyWith((message) => updates(message as TestOptions)) as TestOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestOptions create() => TestOptions._();
  TestOptions createEmptyInstance() => create();
  static $pb.PbList<TestOptions> createRepeated() => $pb.PbList<TestOptions>();
  @$core.pragma('dart2js:noInline')
  static TestOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestOptions>(create);
  static TestOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SortDirection get currentSortDirection => $_getN(0);
  @$pb.TagNumber(1)
  set currentSortDirection($1.SortDirection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrentSortDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentSortDirection() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
