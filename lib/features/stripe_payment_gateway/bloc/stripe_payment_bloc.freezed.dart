// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stripe_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StripePaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchClientKey,
    required TResult Function(double amount, String currency) initializePayment,
    required TResult Function() paymentCompletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchClientKey,
    TResult? Function(double amount, String currency)? initializePayment,
    TResult? Function()? paymentCompletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchClientKey,
    TResult Function(double amount, String currency)? initializePayment,
    TResult Function()? paymentCompletion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StripePaymentFetchClientKey value)
        fetchClientKey,
    required TResult Function(_StripePaymentInitializePayment value)
        initializePayment,
    required TResult Function(_StripePaymentCompletionEvent value)
        paymentCompletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult? Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult? Function(_StripePaymentCompletionEvent value)? paymentCompletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult Function(_StripePaymentCompletionEvent value)? paymentCompletion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripePaymentEventCopyWith<$Res> {
  factory $StripePaymentEventCopyWith(
          StripePaymentEvent value, $Res Function(StripePaymentEvent) then) =
      _$StripePaymentEventCopyWithImpl<$Res, StripePaymentEvent>;
}

/// @nodoc
class _$StripePaymentEventCopyWithImpl<$Res, $Val extends StripePaymentEvent>
    implements $StripePaymentEventCopyWith<$Res> {
  _$StripePaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StripePaymentEvent
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
    extends _$StripePaymentEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'StripePaymentEvent.started()';
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
    required TResult Function() fetchClientKey,
    required TResult Function(double amount, String currency) initializePayment,
    required TResult Function() paymentCompletion,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchClientKey,
    TResult? Function(double amount, String currency)? initializePayment,
    TResult? Function()? paymentCompletion,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchClientKey,
    TResult Function(double amount, String currency)? initializePayment,
    TResult Function()? paymentCompletion,
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
    required TResult Function(_StripePaymentFetchClientKey value)
        fetchClientKey,
    required TResult Function(_StripePaymentInitializePayment value)
        initializePayment,
    required TResult Function(_StripePaymentCompletionEvent value)
        paymentCompletion,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult? Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult? Function(_StripePaymentCompletionEvent value)? paymentCompletion,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult Function(_StripePaymentCompletionEvent value)? paymentCompletion,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StripePaymentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$StripePaymentFetchClientKeyImplCopyWith<$Res> {
  factory _$$StripePaymentFetchClientKeyImplCopyWith(
          _$StripePaymentFetchClientKeyImpl value,
          $Res Function(_$StripePaymentFetchClientKeyImpl) then) =
      __$$StripePaymentFetchClientKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StripePaymentFetchClientKeyImplCopyWithImpl<$Res>
    extends _$StripePaymentEventCopyWithImpl<$Res,
        _$StripePaymentFetchClientKeyImpl>
    implements _$$StripePaymentFetchClientKeyImplCopyWith<$Res> {
  __$$StripePaymentFetchClientKeyImplCopyWithImpl(
      _$StripePaymentFetchClientKeyImpl _value,
      $Res Function(_$StripePaymentFetchClientKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StripePaymentFetchClientKeyImpl
    implements _StripePaymentFetchClientKey {
  const _$StripePaymentFetchClientKeyImpl();

  @override
  String toString() {
    return 'StripePaymentEvent.fetchClientKey()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripePaymentFetchClientKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchClientKey,
    required TResult Function(double amount, String currency) initializePayment,
    required TResult Function() paymentCompletion,
  }) {
    return fetchClientKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchClientKey,
    TResult? Function(double amount, String currency)? initializePayment,
    TResult? Function()? paymentCompletion,
  }) {
    return fetchClientKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchClientKey,
    TResult Function(double amount, String currency)? initializePayment,
    TResult Function()? paymentCompletion,
    required TResult orElse(),
  }) {
    if (fetchClientKey != null) {
      return fetchClientKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StripePaymentFetchClientKey value)
        fetchClientKey,
    required TResult Function(_StripePaymentInitializePayment value)
        initializePayment,
    required TResult Function(_StripePaymentCompletionEvent value)
        paymentCompletion,
  }) {
    return fetchClientKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult? Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult? Function(_StripePaymentCompletionEvent value)? paymentCompletion,
  }) {
    return fetchClientKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult Function(_StripePaymentCompletionEvent value)? paymentCompletion,
    required TResult orElse(),
  }) {
    if (fetchClientKey != null) {
      return fetchClientKey(this);
    }
    return orElse();
  }
}

abstract class _StripePaymentFetchClientKey implements StripePaymentEvent {
  const factory _StripePaymentFetchClientKey() =
      _$StripePaymentFetchClientKeyImpl;
}

/// @nodoc
abstract class _$$StripePaymentInitializePaymentImplCopyWith<$Res> {
  factory _$$StripePaymentInitializePaymentImplCopyWith(
          _$StripePaymentInitializePaymentImpl value,
          $Res Function(_$StripePaymentInitializePaymentImpl) then) =
      __$$StripePaymentInitializePaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount, String currency});
}

/// @nodoc
class __$$StripePaymentInitializePaymentImplCopyWithImpl<$Res>
    extends _$StripePaymentEventCopyWithImpl<$Res,
        _$StripePaymentInitializePaymentImpl>
    implements _$$StripePaymentInitializePaymentImplCopyWith<$Res> {
  __$$StripePaymentInitializePaymentImplCopyWithImpl(
      _$StripePaymentInitializePaymentImpl _value,
      $Res Function(_$StripePaymentInitializePaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_$StripePaymentInitializePaymentImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StripePaymentInitializePaymentImpl
    implements _StripePaymentInitializePayment {
  const _$StripePaymentInitializePaymentImpl(
      {this.amount = 0, this.currency = 'usd'});

  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final String currency;

  @override
  String toString() {
    return 'StripePaymentEvent.initializePayment(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripePaymentInitializePaymentImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StripePaymentInitializePaymentImplCopyWith<
          _$StripePaymentInitializePaymentImpl>
      get copyWith => __$$StripePaymentInitializePaymentImplCopyWithImpl<
          _$StripePaymentInitializePaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchClientKey,
    required TResult Function(double amount, String currency) initializePayment,
    required TResult Function() paymentCompletion,
  }) {
    return initializePayment(amount, currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchClientKey,
    TResult? Function(double amount, String currency)? initializePayment,
    TResult? Function()? paymentCompletion,
  }) {
    return initializePayment?.call(amount, currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchClientKey,
    TResult Function(double amount, String currency)? initializePayment,
    TResult Function()? paymentCompletion,
    required TResult orElse(),
  }) {
    if (initializePayment != null) {
      return initializePayment(amount, currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StripePaymentFetchClientKey value)
        fetchClientKey,
    required TResult Function(_StripePaymentInitializePayment value)
        initializePayment,
    required TResult Function(_StripePaymentCompletionEvent value)
        paymentCompletion,
  }) {
    return initializePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult? Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult? Function(_StripePaymentCompletionEvent value)? paymentCompletion,
  }) {
    return initializePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult Function(_StripePaymentCompletionEvent value)? paymentCompletion,
    required TResult orElse(),
  }) {
    if (initializePayment != null) {
      return initializePayment(this);
    }
    return orElse();
  }
}

abstract class _StripePaymentInitializePayment implements StripePaymentEvent {
  const factory _StripePaymentInitializePayment(
      {final double amount,
      final String currency}) = _$StripePaymentInitializePaymentImpl;

  double get amount;
  String get currency;

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StripePaymentInitializePaymentImplCopyWith<
          _$StripePaymentInitializePaymentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StripePaymentCompletionEventImplCopyWith<$Res> {
  factory _$$StripePaymentCompletionEventImplCopyWith(
          _$StripePaymentCompletionEventImpl value,
          $Res Function(_$StripePaymentCompletionEventImpl) then) =
      __$$StripePaymentCompletionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StripePaymentCompletionEventImplCopyWithImpl<$Res>
    extends _$StripePaymentEventCopyWithImpl<$Res,
        _$StripePaymentCompletionEventImpl>
    implements _$$StripePaymentCompletionEventImplCopyWith<$Res> {
  __$$StripePaymentCompletionEventImplCopyWithImpl(
      _$StripePaymentCompletionEventImpl _value,
      $Res Function(_$StripePaymentCompletionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StripePaymentCompletionEventImpl
    implements _StripePaymentCompletionEvent {
  const _$StripePaymentCompletionEventImpl();

  @override
  String toString() {
    return 'StripePaymentEvent.paymentCompletion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripePaymentCompletionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchClientKey,
    required TResult Function(double amount, String currency) initializePayment,
    required TResult Function() paymentCompletion,
  }) {
    return paymentCompletion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchClientKey,
    TResult? Function(double amount, String currency)? initializePayment,
    TResult? Function()? paymentCompletion,
  }) {
    return paymentCompletion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchClientKey,
    TResult Function(double amount, String currency)? initializePayment,
    TResult Function()? paymentCompletion,
    required TResult orElse(),
  }) {
    if (paymentCompletion != null) {
      return paymentCompletion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StripePaymentFetchClientKey value)
        fetchClientKey,
    required TResult Function(_StripePaymentInitializePayment value)
        initializePayment,
    required TResult Function(_StripePaymentCompletionEvent value)
        paymentCompletion,
  }) {
    return paymentCompletion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult? Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult? Function(_StripePaymentCompletionEvent value)? paymentCompletion,
  }) {
    return paymentCompletion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StripePaymentFetchClientKey value)? fetchClientKey,
    TResult Function(_StripePaymentInitializePayment value)? initializePayment,
    TResult Function(_StripePaymentCompletionEvent value)? paymentCompletion,
    required TResult orElse(),
  }) {
    if (paymentCompletion != null) {
      return paymentCompletion(this);
    }
    return orElse();
  }
}

abstract class _StripePaymentCompletionEvent implements StripePaymentEvent {
  const factory _StripePaymentCompletionEvent() =
      _$StripePaymentCompletionEventImpl;
}

/// @nodoc
mixin _$StripePaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StripePaymentLoadingState value) loading,
    required TResult Function(_StripePaymentErrorState value) error,
    required TResult Function(_StripePaymentSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StripePaymentLoadingState value)? loading,
    TResult? Function(_StripePaymentErrorState value)? error,
    TResult? Function(_StripePaymentSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StripePaymentLoadingState value)? loading,
    TResult Function(_StripePaymentErrorState value)? error,
    TResult Function(_StripePaymentSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripePaymentStateCopyWith<$Res> {
  factory $StripePaymentStateCopyWith(
          StripePaymentState value, $Res Function(StripePaymentState) then) =
      _$StripePaymentStateCopyWithImpl<$Res, StripePaymentState>;
}

/// @nodoc
class _$StripePaymentStateCopyWithImpl<$Res, $Val extends StripePaymentState>
    implements $StripePaymentStateCopyWith<$Res> {
  _$StripePaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StripePaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StripePaymentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StripePaymentLoadingState value) loading,
    required TResult Function(_StripePaymentErrorState value) error,
    required TResult Function(_StripePaymentSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StripePaymentLoadingState value)? loading,
    TResult? Function(_StripePaymentErrorState value)? error,
    TResult? Function(_StripePaymentSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StripePaymentLoadingState value)? loading,
    TResult Function(_StripePaymentErrorState value)? error,
    TResult Function(_StripePaymentSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StripePaymentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$StripePaymentLoadingStateImplCopyWith<$Res> {
  factory _$$StripePaymentLoadingStateImplCopyWith(
          _$StripePaymentLoadingStateImpl value,
          $Res Function(_$StripePaymentLoadingStateImpl) then) =
      __$$StripePaymentLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StripePaymentLoadingStateImplCopyWithImpl<$Res>
    extends _$StripePaymentStateCopyWithImpl<$Res,
        _$StripePaymentLoadingStateImpl>
    implements _$$StripePaymentLoadingStateImplCopyWith<$Res> {
  __$$StripePaymentLoadingStateImplCopyWithImpl(
      _$StripePaymentLoadingStateImpl _value,
      $Res Function(_$StripePaymentLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StripePaymentLoadingStateImpl implements _StripePaymentLoadingState {
  const _$StripePaymentLoadingStateImpl();

  @override
  String toString() {
    return 'StripePaymentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripePaymentLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StripePaymentLoadingState value) loading,
    required TResult Function(_StripePaymentErrorState value) error,
    required TResult Function(_StripePaymentSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StripePaymentLoadingState value)? loading,
    TResult? Function(_StripePaymentErrorState value)? error,
    TResult? Function(_StripePaymentSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StripePaymentLoadingState value)? loading,
    TResult Function(_StripePaymentErrorState value)? error,
    TResult Function(_StripePaymentSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StripePaymentLoadingState implements StripePaymentState {
  const factory _StripePaymentLoadingState() = _$StripePaymentLoadingStateImpl;
}

/// @nodoc
abstract class _$$StripePaymentErrorStateImplCopyWith<$Res> {
  factory _$$StripePaymentErrorStateImplCopyWith(
          _$StripePaymentErrorStateImpl value,
          $Res Function(_$StripePaymentErrorStateImpl) then) =
      __$$StripePaymentErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$StripePaymentErrorStateImplCopyWithImpl<$Res>
    extends _$StripePaymentStateCopyWithImpl<$Res,
        _$StripePaymentErrorStateImpl>
    implements _$$StripePaymentErrorStateImplCopyWith<$Res> {
  __$$StripePaymentErrorStateImplCopyWithImpl(
      _$StripePaymentErrorStateImpl _value,
      $Res Function(_$StripePaymentErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$StripePaymentErrorStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StripePaymentErrorStateImpl implements _StripePaymentErrorState {
  const _$StripePaymentErrorStateImpl({this.errorMessage = ""});

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'StripePaymentState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripePaymentErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StripePaymentErrorStateImplCopyWith<_$StripePaymentErrorStateImpl>
      get copyWith => __$$StripePaymentErrorStateImplCopyWithImpl<
          _$StripePaymentErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? success,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StripePaymentLoadingState value) loading,
    required TResult Function(_StripePaymentErrorState value) error,
    required TResult Function(_StripePaymentSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StripePaymentLoadingState value)? loading,
    TResult? Function(_StripePaymentErrorState value)? error,
    TResult? Function(_StripePaymentSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StripePaymentLoadingState value)? loading,
    TResult Function(_StripePaymentErrorState value)? error,
    TResult Function(_StripePaymentSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StripePaymentErrorState implements StripePaymentState {
  const factory _StripePaymentErrorState({final String errorMessage}) =
      _$StripePaymentErrorStateImpl;

  String get errorMessage;

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StripePaymentErrorStateImplCopyWith<_$StripePaymentErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StripePaymentSuccessStateImplCopyWith<$Res> {
  factory _$$StripePaymentSuccessStateImplCopyWith(
          _$StripePaymentSuccessStateImpl value,
          $Res Function(_$StripePaymentSuccessStateImpl) then) =
      __$$StripePaymentSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StripePaymentSuccessStateImplCopyWithImpl<$Res>
    extends _$StripePaymentStateCopyWithImpl<$Res,
        _$StripePaymentSuccessStateImpl>
    implements _$$StripePaymentSuccessStateImplCopyWith<$Res> {
  __$$StripePaymentSuccessStateImplCopyWithImpl(
      _$StripePaymentSuccessStateImpl _value,
      $Res Function(_$StripePaymentSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StripePaymentSuccessStateImpl implements _StripePaymentSuccessState {
  const _$StripePaymentSuccessStateImpl();

  @override
  String toString() {
    return 'StripePaymentState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripePaymentSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StripePaymentLoadingState value) loading,
    required TResult Function(_StripePaymentErrorState value) error,
    required TResult Function(_StripePaymentSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StripePaymentLoadingState value)? loading,
    TResult? Function(_StripePaymentErrorState value)? error,
    TResult? Function(_StripePaymentSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StripePaymentLoadingState value)? loading,
    TResult Function(_StripePaymentErrorState value)? error,
    TResult Function(_StripePaymentSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _StripePaymentSuccessState implements StripePaymentState {
  const factory _StripePaymentSuccessState() = _$StripePaymentSuccessStateImpl;
}
