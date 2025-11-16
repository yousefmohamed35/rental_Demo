// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:demorental/core/data/data_sources/cache_helper.dart' as _i758;
import 'package:demorental/core/data/data_sources/cache_helper_impl.dart'
    as _i394;
import 'package:demorental/core/data/data_sources/shared_pref.dart' as _i1041;
import 'package:demorental/core/services/navigation/app_router.dart' as _i37;
import 'package:demorental/di/app_module.dart' as _i782;
import 'package:demorental/feature/add_new_rental/data/repo/rental_repo.dart'
    as _i443;
import 'package:demorental/feature/add_new_rental/data/services/rental_services.dart'
    as _i891;
import 'package:demorental/feature/add_new_rental/presentation/manager/rental_cubit/rental_cubit.dart'
    as _i763;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i37.AppRouter>(() => _i37.AppRouter());
    gh.lazySingleton<_i1041.SharedPref>(() => _i1041.SharedPref());
    gh.lazySingleton<_i891.RentalHiveService>(() => _i891.RentalHiveService());
    gh.lazySingleton<_i443.RentalRepository>(
      () => _i443.RentalRepository(service: gh<_i891.RentalHiveService>()),
    );
    gh.singleton<_i758.CacheHelper>(
      () => _i394.CacheHelperImpl(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i763.RentalCubit>(
      () => _i763.RentalCubit(gh<_i443.RentalRepository>()),
    );
    return this;
  }
}

class _$AppModule extends _i782.AppModule {}
