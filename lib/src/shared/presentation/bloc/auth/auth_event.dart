part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn(AdminModelClass adminModelData) = _LogInEvent;
}
