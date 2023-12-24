import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ultimate_code_refrence/core/networking/api_service.dart';
import 'package:ultimate_code_refrence/core/networking/dio_factory.dart';
import 'package:ultimate_code_refrence/features/login/data/repos/login_repo.dart';
import 'package:ultimate_code_refrence/features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
// Dio & ApiSevice
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
