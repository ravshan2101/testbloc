import 'package:dartz/dartz.dart';
import 'package:testbloc/core/usecase/usecase.dart';
import 'package:testbloc/data/models/auth/create_user_req.dart';
import 'package:testbloc/domain/repository/auth/auth_repository.dart';
import 'package:testbloc/service_lacotor.dart';

class SignupUseCase implements Usecase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return s1<AuthRepository>().signUp(params!);
  }
}
