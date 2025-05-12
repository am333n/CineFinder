// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageUrl {

 String? get url;
/// Create a copy of ImageUrl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageUrlCopyWith<ImageUrl> get copyWith => _$ImageUrlCopyWithImpl<ImageUrl>(this as ImageUrl, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageUrl&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'ImageUrl(url: $url)';
}


}

/// @nodoc
abstract mixin class $ImageUrlCopyWith<$Res>  {
  factory $ImageUrlCopyWith(ImageUrl value, $Res Function(ImageUrl) _then) = _$ImageUrlCopyWithImpl;
@useResult
$Res call({
 String? url
});




}
/// @nodoc
class _$ImageUrlCopyWithImpl<$Res>
    implements $ImageUrlCopyWith<$Res> {
  _$ImageUrlCopyWithImpl(this._self, this._then);

  final ImageUrl _self;
  final $Res Function(ImageUrl) _then;

/// Create a copy of ImageUrl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _ImageUrl extends ImageUrl {
  const _ImageUrl(this.url): super._();
  

@override final  String? url;

/// Create a copy of ImageUrl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageUrlCopyWith<_ImageUrl> get copyWith => __$ImageUrlCopyWithImpl<_ImageUrl>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageUrl&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'ImageUrl(url: $url)';
}


}

/// @nodoc
abstract mixin class _$ImageUrlCopyWith<$Res> implements $ImageUrlCopyWith<$Res> {
  factory _$ImageUrlCopyWith(_ImageUrl value, $Res Function(_ImageUrl) _then) = __$ImageUrlCopyWithImpl;
@override @useResult
$Res call({
 String? url
});




}
/// @nodoc
class __$ImageUrlCopyWithImpl<$Res>
    implements _$ImageUrlCopyWith<$Res> {
  __$ImageUrlCopyWithImpl(this._self, this._then);

  final _ImageUrl _self;
  final $Res Function(_ImageUrl) _then;

/// Create a copy of ImageUrl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,}) {
  return _then(_ImageUrl(
freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
