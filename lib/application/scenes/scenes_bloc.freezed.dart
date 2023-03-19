// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scenes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScenesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int id) likeVideo,
    required TResult Function(int id) unLikeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(int id)? likeVideo,
    TResult? Function(int id)? unLikeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unLikeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(LikeVideo value) likeVideo,
    required TResult Function(UnLikeVideo value) unLikeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(LikeVideo value)? likeVideo,
    TResult? Function(UnLikeVideo value)? unLikeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnLikeVideo value)? unLikeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenesEventCopyWith<$Res> {
  factory $ScenesEventCopyWith(
          ScenesEvent value, $Res Function(ScenesEvent) then) =
      _$ScenesEventCopyWithImpl<$Res, ScenesEvent>;
}

/// @nodoc
class _$ScenesEventCopyWithImpl<$Res, $Val extends ScenesEvent>
    implements $ScenesEventCopyWith<$Res> {
  _$ScenesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$ScenesEventCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized();

  @override
  String toString() {
    return 'ScenesEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int id) likeVideo,
    required TResult Function(int id) unLikeVideo,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(int id)? likeVideo,
    TResult? Function(int id)? unLikeVideo,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unLikeVideo,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(LikeVideo value) likeVideo,
    required TResult Function(UnLikeVideo value) unLikeVideo,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(LikeVideo value)? likeVideo,
    TResult? Function(UnLikeVideo value)? unLikeVideo,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnLikeVideo value)? unLikeVideo,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements ScenesEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class _$$LikeVideoCopyWith<$Res> {
  factory _$$LikeVideoCopyWith(
          _$LikeVideo value, $Res Function(_$LikeVideo) then) =
      __$$LikeVideoCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$LikeVideoCopyWithImpl<$Res>
    extends _$ScenesEventCopyWithImpl<$Res, _$LikeVideo>
    implements _$$LikeVideoCopyWith<$Res> {
  __$$LikeVideoCopyWithImpl(
      _$LikeVideo _value, $Res Function(_$LikeVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LikeVideo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikeVideo implements LikeVideo {
  const _$LikeVideo({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ScenesEvent.likeVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeVideo &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeVideoCopyWith<_$LikeVideo> get copyWith =>
      __$$LikeVideoCopyWithImpl<_$LikeVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int id) likeVideo,
    required TResult Function(int id) unLikeVideo,
  }) {
    return likeVideo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(int id)? likeVideo,
    TResult? Function(int id)? unLikeVideo,
  }) {
    return likeVideo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unLikeVideo,
    required TResult orElse(),
  }) {
    if (likeVideo != null) {
      return likeVideo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(LikeVideo value) likeVideo,
    required TResult Function(UnLikeVideo value) unLikeVideo,
  }) {
    return likeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(LikeVideo value)? likeVideo,
    TResult? Function(UnLikeVideo value)? unLikeVideo,
  }) {
    return likeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnLikeVideo value)? unLikeVideo,
    required TResult orElse(),
  }) {
    if (likeVideo != null) {
      return likeVideo(this);
    }
    return orElse();
  }
}

abstract class LikeVideo implements ScenesEvent {
  const factory LikeVideo({required final int id}) = _$LikeVideo;

  int get id;
  @JsonKey(ignore: true)
  _$$LikeVideoCopyWith<_$LikeVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnLikeVideoCopyWith<$Res> {
  factory _$$UnLikeVideoCopyWith(
          _$UnLikeVideo value, $Res Function(_$UnLikeVideo) then) =
      __$$UnLikeVideoCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UnLikeVideoCopyWithImpl<$Res>
    extends _$ScenesEventCopyWithImpl<$Res, _$UnLikeVideo>
    implements _$$UnLikeVideoCopyWith<$Res> {
  __$$UnLikeVideoCopyWithImpl(
      _$UnLikeVideo _value, $Res Function(_$UnLikeVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UnLikeVideo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnLikeVideo implements UnLikeVideo {
  const _$UnLikeVideo({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ScenesEvent.unLikeVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnLikeVideo &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnLikeVideoCopyWith<_$UnLikeVideo> get copyWith =>
      __$$UnLikeVideoCopyWithImpl<_$UnLikeVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int id) likeVideo,
    required TResult Function(int id) unLikeVideo,
  }) {
    return unLikeVideo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(int id)? likeVideo,
    TResult? Function(int id)? unLikeVideo,
  }) {
    return unLikeVideo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unLikeVideo,
    required TResult orElse(),
  }) {
    if (unLikeVideo != null) {
      return unLikeVideo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(LikeVideo value) likeVideo,
    required TResult Function(UnLikeVideo value) unLikeVideo,
  }) {
    return unLikeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(LikeVideo value)? likeVideo,
    TResult? Function(UnLikeVideo value)? unLikeVideo,
  }) {
    return unLikeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnLikeVideo value)? unLikeVideo,
    required TResult orElse(),
  }) {
    if (unLikeVideo != null) {
      return unLikeVideo(this);
    }
    return orElse();
  }
}

abstract class UnLikeVideo implements ScenesEvent {
  const factory UnLikeVideo({required final int id}) = _$UnLikeVideo;

  int get id;
  @JsonKey(ignore: true)
  _$$UnLikeVideoCopyWith<_$UnLikeVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScenesState {
  List<Downloads> get videoList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScenesStateCopyWith<ScenesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenesStateCopyWith<$Res> {
  factory $ScenesStateCopyWith(
          ScenesState value, $Res Function(ScenesState) then) =
      _$ScenesStateCopyWithImpl<$Res, ScenesState>;
  @useResult
  $Res call({List<Downloads> videoList, bool isLoading, bool isError});
}

/// @nodoc
class _$ScenesStateCopyWithImpl<$Res, $Val extends ScenesState>
    implements $ScenesStateCopyWith<$Res> {
  _$ScenesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      videoList: null == videoList
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $ScenesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Downloads> videoList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ScenesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_Initial(
      videoList: null == videoList
          ? _value._videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Downloads> videoList,
      required this.isLoading,
      required this.isError})
      : _videoList = videoList;

  final List<Downloads> _videoList;
  @override
  List<Downloads> get videoList {
    if (_videoList is EqualUnmodifiableListView) return _videoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'ScenesState(videoList: $videoList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._videoList, _videoList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_videoList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ScenesState {
  const factory _Initial(
      {required final List<Downloads> videoList,
      required final bool isLoading,
      required final bool isError}) = _$_Initial;

  @override
  List<Downloads> get videoList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
