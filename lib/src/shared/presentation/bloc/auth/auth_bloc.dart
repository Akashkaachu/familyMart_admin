import 'package:ecommerce_admin/src/shared/domain/models/admin_data_model.dart';
import 'package:ecommerce_admin/src/shared/domain/repository/auth/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(const AuthState.initial()) {
    on<_LogInEvent>((event, emit) async {
      emit(const AuthState.loading());
      try {
        final result = await authRepository.logIn(event.adminModelData);
        print(result);
        if (result == 'success') {
          emit(const AuthState.loggedIn(''));
        } else {
          emit(AuthState.error(result));
        }
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    });
  }
}
