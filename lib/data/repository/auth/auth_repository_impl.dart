import 'package:dartz/dartz.dart';
import 'package:testbloc/data/models/auth/create_user_req.dart';
import 'package:testbloc/data/sources/auth/auth_firebase_service.dart';
import 'package:testbloc/domain/repository/auth/auth_repository.dart';
import 'package:testbloc/service_lacotor.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp(CreateUserReq createUserReq) async {
    return await s1<AuthFirebaseService>().signUp(createUserReq);
  }
}
