// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationState {
  bool get isPop => throw _privateConstructorUsedError;
  String get previousTab => throw _privateConstructorUsedError;
  String get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({bool isPop, String previousTab, String selectedTab});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object? isPop = freezed,
    Object? previousTab = freezed,
    Object? selectedTab = freezed,
  }) {
    return _then(_value.copyWith(
      isPop: isPop == freezed
          ? _value.isPop
          : isPop // ignore: cast_nullable_to_non_nullable
              as bool,
      previousTab: previousTab == freezed
          ? _value.previousTab
          : previousTab // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_NavigationStateCopyWith(
          _$_NavigationState value, $Res Function(_$_NavigationState) then) =
      __$$_NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isPop, String previousTab, String selectedTab});
}

/// @nodoc
class __$$_NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$$_NavigationStateCopyWith<$Res> {
  __$$_NavigationStateCopyWithImpl(
      _$_NavigationState _value, $Res Function(_$_NavigationState) _then)
      : super(_value, (v) => _then(v as _$_NavigationState));

  @override
  _$_NavigationState get _value => super._value as _$_NavigationState;

  @override
  $Res call({
    Object? isPop = freezed,
    Object? previousTab = freezed,
    Object? selectedTab = freezed,
  }) {
    return _then(_$_NavigationState(
      isPop: isPop == freezed
          ? _value.isPop
          : isPop // ignore: cast_nullable_to_non_nullable
              as bool,
      previousTab: previousTab == freezed
          ? _value.previousTab
          : previousTab // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  _$_NavigationState(
      {required this.isPop,
      required this.previousTab,
      required this.selectedTab});

  @override
  final bool isPop;
  @override
  final String previousTab;
  @override
  final String selectedTab;

  @override
  String toString() {
    return 'NavigationState(isPop: $isPop, previousTab: $previousTab, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationState &&
            const DeepCollectionEquality().equals(other.isPop, isPop) &&
            const DeepCollectionEquality()
                .equals(other.previousTab, previousTab) &&
            const DeepCollectionEquality()
                .equals(other.selectedTab, selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isPop),
      const DeepCollectionEquality().hash(previousTab),
      const DeepCollectionEquality().hash(selectedTab));

  @JsonKey(ignore: true)
  @override
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      __$$_NavigationStateCopyWithImpl<_$_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  factory _NavigationState(
      {required final bool isPop,
      required final String previousTab,
      required final String selectedTab}) = _$_NavigationState;

  @override
  bool get isPop => throw _privateConstructorUsedError;
  @override
  String get previousTab => throw _privateConstructorUsedError;
  @override
  String get selectedTab => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
