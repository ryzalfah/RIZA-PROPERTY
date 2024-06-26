import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:riza_property/bloc/register/register_state.dart';
import '../../repositories/auth_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final _repo = AuthRepo();

  Future<void> register(
      {required String email, required String password}) async {
    emit(RegisterLoading());

    try {
      await _repo.register(email: email, password: password);

      FirebaseFirestore.instance
          .collection("Users")
          .doc()
          .set({"username": email});

      emit(RegisterSuccess('Berhasil!'));
    } catch (e) {
      print(e);
      emit(RegisterFailure(e.toString()));
    }
  }
}
