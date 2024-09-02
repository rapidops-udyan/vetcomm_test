// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'in_app_purchase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InAppPurchaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() init,
    required TResult Function() fetchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? init,
    TResult? Function()? fetchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? init,
    TResult Function()? fetchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InAppPurchaseInitEvent value) init,
    required TResult Function(_InAppPurchaseFetchProductEvent value)
        fetchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InAppPurchaseInitEvent value)? init,
    TResult? Function(_InAppPurchaseFetchProductEvent value)? fetchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InAppPurchaseInitEvent value)? init,
    TResult Function(_InAppPurchaseFetchProductEvent value)? fetchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppPurchaseEventCopyWith<$Res> {
  factory $InAppPurchaseEventCopyWith(
          InAppPurchaseEvent value, $Res Function(InAppPurchaseEvent) then) =
      _$InAppPurchaseEventCopyWithImpl<$Res, InAppPurchaseEvent>;
}

/// @nodoc
class _$InAppPurchaseEventCopyWithImpl<$Res, $Val extends InAppPurchaseEvent>
    implements $InAppPurchaseEventCopyWith<$Res> {
  _$InAppPurchaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InAppPurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$InAppPurchaseEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InAppPurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'InAppPurchaseEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() init,
    required TResult Function() fetchProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? init,
    TResult? Function()? fetchProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? init,
    TResult Function()? fetchProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InAppPurchaseInitEvent value) init,
    required TResult Function(_InAppPurchaseFetchProductEvent value)
        fetchProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InAppPurchaseInitEvent value)? init,
    TResult? Function(_InAppPurchaseFetchProductEvent value)? fetchProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InAppPurchaseInitEvent value)? init,
    TResult Function(_InAppPurchaseFetchProductEvent value)? fetchProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements InAppPurchaseEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$InAppPurchaseInitEventImplCopyWith<$Res> {
  factory _$$InAppPurchaseInitEventImplCopyWith(
          _$InAppPurchaseInitEventImpl value,
          $Res Function(_$InAppPurchaseInitEventImpl) then) =
      __$$InAppPurchaseInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InAppPurchaseInitEventImplCopyWithImpl<$Res>
    extends _$InAppPurchaseEventCopyWithImpl<$Res, _$InAppPurchaseInitEventImpl>
    implements _$$InAppPurchaseInitEventImplCopyWith<$Res> {
  __$$InAppPurchaseInitEventImplCopyWithImpl(
      _$InAppPurchaseInitEventImpl _value,
      $Res Function(_$InAppPurchaseInitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InAppPurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InAppPurchaseInitEventImpl implements _InAppPurchaseInitEvent {
  const _$InAppPurchaseInitEventImpl();

  @override
  String toString() {
    return 'InAppPurchaseEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InAppPurchaseInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() init,
    required TResult Function() fetchProduct,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? init,
    TResult? Function()? fetchProduct,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? init,
    TResult Function()? fetchProduct,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InAppPurchaseInitEvent value) init,
    required TResult Function(_InAppPurchaseFetchProductEvent value)
        fetchProduct,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InAppPurchaseInitEvent value)? init,
    TResult? Function(_InAppPurchaseFetchProductEvent value)? fetchProduct,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InAppPurchaseInitEvent value)? init,
    TResult Function(_InAppPurchaseFetchProductEvent value)? fetchProduct,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InAppPurchaseInitEvent implements InAppPurchaseEvent {
  const factory _InAppPurchaseInitEvent() = _$InAppPurchaseInitEventImpl;
}

/// @nodoc
abstract class _$$InAppPurchaseFetchProductEventImplCopyWith<$Res> {
  factory _$$InAppPurchaseFetchProductEventImplCopyWith(
          _$InAppPurchaseFetchProductEventImpl value,
          $Res Function(_$InAppPurchaseFetchProductEventImpl) then) =
      __$$InAppPurchaseFetchProductEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InAppPurchaseFetchProductEventImplCopyWithImpl<$Res>
    extends _$InAppPurchaseEventCopyWithImpl<$Res,
        _$InAppPurchaseFetchProductEventImpl>
    implements _$$InAppPurchaseFetchProductEventImplCopyWith<$Res> {
  __$$InAppPurchaseFetchProductEventImplCopyWithImpl(
      _$InAppPurchaseFetchProductEventImpl _value,
      $Res Function(_$InAppPurchaseFetchProductEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InAppPurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InAppPurchaseFetchProductEventImpl
    implements _InAppPurchaseFetchProductEvent {
  const _$InAppPurchaseFetchProductEventImpl();

  @override
  String toString() {
    return 'InAppPurchaseEvent.fetchProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InAppPurchaseFetchProductEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() init,
    required TResult Function() fetchProduct,
  }) {
    return fetchProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? init,
    TResult? Function()? fetchProduct,
  }) {
    return fetchProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? init,
    TResult Function()? fetchProduct,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InAppPurchaseInitEvent value) init,
    required TResult Function(_InAppPurchaseFetchProductEvent value)
        fetchProduct,
  }) {
    return fetchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InAppPurchaseInitEvent value)? init,
    TResult? Function(_InAppPurchaseFetchProductEvent value)? fetchProduct,
  }) {
    return fetchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InAppPurchaseInitEvent value)? init,
    TResult Function(_InAppPurchaseFetchProductEvent value)? fetchProduct,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(this);
    }
    return orElse();
  }
}

abstract class _InAppPurchaseFetchProductEvent implements InAppPurchaseEvent {
  const factory _InAppPurchaseFetchProductEvent() =
      _$InAppPurchaseFetchProductEventImpl;
}

/// @nodoc
mixin _$InAppPurchaseState {
  InAppPurchaseStateEnum get status => throw _privateConstructorUsedError;
  InAppPurchase? get iap => throw _privateConstructorUsedError;

  /// Create a copy of InAppPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InAppPurchaseStateCopyWith<InAppPurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppPurchaseStateCopyWith<$Res> {
  factory $InAppPurchaseStateCopyWith(
          InAppPurchaseState value, $Res Function(InAppPurchaseState) then) =
      _$InAppPurchaseStateCopyWithImpl<$Res, InAppPurchaseState>;
  @useResult
  $Res call({InAppPurchaseStateEnum status, InAppPurchase? iap});
}

/// @nodoc
class _$InAppPurchaseStateCopyWithImpl<$Res, $Val extends InAppPurchaseState>
    implements $InAppPurchaseStateCopyWith<$Res> {
  _$InAppPurchaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InAppPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? iap = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InAppPurchaseStateEnum,
      iap: freezed == iap
          ? _value.iap
          : iap // ignore: cast_nullable_to_non_nullable
              as InAppPurchase?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InAppPurchaseStateImplCopyWith<$Res>
    implements $InAppPurchaseStateCopyWith<$Res> {
  factory _$$InAppPurchaseStateImplCopyWith(_$InAppPurchaseStateImpl value,
          $Res Function(_$InAppPurchaseStateImpl) then) =
      __$$InAppPurchaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InAppPurchaseStateEnum status, InAppPurchase? iap});
}

/// @nodoc
class __$$InAppPurchaseStateImplCopyWithImpl<$Res>
    extends _$InAppPurchaseStateCopyWithImpl<$Res, _$InAppPurchaseStateImpl>
    implements _$$InAppPurchaseStateImplCopyWith<$Res> {
  __$$InAppPurchaseStateImplCopyWithImpl(_$InAppPurchaseStateImpl _value,
      $Res Function(_$InAppPurchaseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InAppPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? iap = freezed,
  }) {
    return _then(_$InAppPurchaseStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InAppPurchaseStateEnum,
      iap: freezed == iap
          ? _value.iap
          : iap // ignore: cast_nullable_to_non_nullable
              as InAppPurchase?,
    ));
  }
}

/// @nodoc

class _$InAppPurchaseStateImpl implements _InAppPurchaseState {
  const _$InAppPurchaseStateImpl(
      {this.status = InAppPurchaseStateEnum.initial, this.iap = null});

  @override
  @JsonKey()
  final InAppPurchaseStateEnum status;
  @override
  @JsonKey()
  final InAppPurchase? iap;

  @override
  String toString() {
    return 'InAppPurchaseState(status: $status, iap: $iap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InAppPurchaseStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.iap, iap) || other.iap == iap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, iap);

  /// Create a copy of InAppPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InAppPurchaseStateImplCopyWith<_$InAppPurchaseStateImpl> get copyWith =>
      __$$InAppPurchaseStateImplCopyWithImpl<_$InAppPurchaseStateImpl>(
          this, _$identity);
}

abstract class _InAppPurchaseState implements InAppPurchaseState {
  const factory _InAppPurchaseState(
      {final InAppPurchaseStateEnum status,
      final InAppPurchase? iap}) = _$InAppPurchaseStateImpl;

  @override
  InAppPurchaseStateEnum get status;
  @override
  InAppPurchase? get iap;

  /// Create a copy of InAppPurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InAppPurchaseStateImplCopyWith<_$InAppPurchaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
