import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:riza_property/bloc/login/login_state.dart';
import '../../repositories/auth_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final _repo = AuthRepo();

  void login({required String email, required String password}) async {
    emit(LoginLoading());

    try {
      await _repo.login(email: email, password: password);

      emit(LoginSuccess('Login berhasil!'));
    } catch (e) {
      print(e);

      emit(LoginFailure(e.toString()));
    }
  }
}
