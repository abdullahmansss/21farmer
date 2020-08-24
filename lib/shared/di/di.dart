import 'package:farmers21/modules/home/cubit/cubit.dart';
import 'package:farmers21/modules/sign_in/cubit/cubit.dart';
import 'package:farmers21/shared/global/cubit.dart';
import 'package:farmers21/shared/network/local/cache_helper.dart';
import 'package:farmers21/shared/network/remote/dio_helper.dart';
import 'package:farmers21/shared/network/repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt di = GetIt.I;

Future init() async
{
  final sp = await SharedPreferences.getInstance();

  di.registerLazySingleton<SharedPreferences>(
    () => sp,
  );

  di.registerLazySingleton<CacheHelper>(
        () => CacheImpl(
          di<SharedPreferences>(),
        ),
  );

  di.registerLazySingleton<DioHelper>(
        () => DioImpl(),
  );

  di.registerLazySingleton<Repository>(
        () => RepoImpl(
      dioHelper: di<DioHelper>(),
    ),
  );

  di.registerFactory<LoginCubit>(() => LoginCubit(
          di<Repository>(),
        ),);

  di.registerFactory<HomeCubit>(
    () => HomeCubit(
      di<Repository>(),
    ),
  );

  di.registerFactory<GlobalCubit>(
        () => GlobalCubit(),
  );
}