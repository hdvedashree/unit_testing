// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CounterState {
  ReportStatus get status => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res, CounterState>;
  @useResult
  $Res call({ReportStatus status, int count});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res, $Val extends CounterState>
    implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReportStatus,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CounterStateEventImplCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$$CounterStateEventImplCopyWith(_$CounterStateEventImpl value,
          $Res Function(_$CounterStateEventImpl) then) =
      __$$CounterStateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReportStatus status, int count});
}

/// @nodoc
class __$$CounterStateEventImplCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$CounterStateEventImpl>
    implements _$$CounterStateEventImplCopyWith<$Res> {
  __$$CounterStateEventImplCopyWithImpl(_$CounterStateEventImpl _value,
      $Res Function(_$CounterStateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? count = null,
  }) {
    return _then(_$CounterStateEventImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReportStatus,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CounterStateEventImpl implements _CounterStateEvent {
  const _$CounterStateEventImpl(
      {this.status = ReportStatus.initial, this.count = 5});

  @override
  @JsonKey()
  final ReportStatus status;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'CounterState(status: $status, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterStateEventImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterStateEventImplCopyWith<_$CounterStateEventImpl> get copyWith =>
      __$$CounterStateEventImplCopyWithImpl<_$CounterStateEventImpl>(
          this, _$identity);
}

abstract class _CounterStateEvent implements CounterState {
  const factory _CounterStateEvent(
      {final ReportStatus status, final int count}) = _$CounterStateEventImpl;

  @override
  ReportStatus get status;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$CounterStateEventImplCopyWith<_$CounterStateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
