// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../app_language_config/app_language_config.dart' as _i716;
import 'models/shareprefrence_model.dart' as _i632;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final shareprefrenceModel = _$ShareprefrenceModel();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => shareprefrenceModel.getSharedPresfrence(),
      preResolve: true,
    );
    gh.singleton<_i716.AppLanguageConfig>(() => _i716.AppLanguageConfig(
        sharedPreferences: gh<_i460.SharedPreferences>()));
    return this;
  }
}

class _$ShareprefrenceModel extends _i632.ShareprefrenceModel {}
