import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultimate_code_refrence/features/login/data/models/login_request_body.dart';
import 'package:ultimate_code_refrence/features/login/data/repos/login_repo.dart';
import 'package:ultimate_code_refrence/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);

    response.when(success: (loginResponse) {
      emit(LoginState.success(loginRequestBody));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
