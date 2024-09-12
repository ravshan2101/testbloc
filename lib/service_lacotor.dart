import 'package:get_it/get_it.dart';
import 'package:testbloc/data/repository/auth/auth_repository_impl.dart';
import 'package:testbloc/data/repository/usecases/auth/signup.dart';
import 'package:testbloc/data/sources/auth/auth_firebase_service.dart';
import 'package:testbloc/domain/repository/auth/auth_repository.dart';

final s1 = GetIt.instance;

Future<void> initilizeDeoendencies() async {
  s1.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  s1.registerSingleton<AuthRepository>(AuthRepositoryImpl());

   s1.registerSingleton<SignupUseCase>(SignupUseCase());

   
}
