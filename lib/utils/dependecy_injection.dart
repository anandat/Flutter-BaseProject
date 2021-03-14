

import 'package:injector/injector.dart';
import 'package:sandyfarm/data/api_service.dart';

void setupDependencyInjections() async {
  Injector injector = Injector.appInstance;
  injector.registerSingleton<ApiService>(() => ApiService());

 /* _authProviderDI(injector);
  _authRepositoryDI(injector);
  _homeRepositoryDI(injector);
  _homeProviderDI(injector);*/
}

/*void _authProviderDI(Injector injector) {
  injector.registerDependency<AuthProvider>(() {
    var api = injector.get<ApiService>();
    return AuthProvider(api: api);
  });
}

void _homeProviderDI(Injector injector) {
  injector.registerDependency<HomeProvider>(() {
    var api = injector.get<ApiService>();
    return HomeProvider(api: api);
  });
}

void _homeRepositoryDI(Injector injector) {
  injector.registerDependency<HomeRepository>(() {
    var userProvider = injector.get<HomeProvider>();
    return HomeRepository(userProvider: userProvider);
  });
}

void _authRepositoryDI(Injector injector) {
  injector.registerDependency<AuthRepository>(() {
    var userProvider = injector.get<AuthProvider>();
    return AuthRepository(userProvider: userProvider);
  });
}*/
