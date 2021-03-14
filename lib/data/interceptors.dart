import 'package:dio/dio.dart';
import 'package:sandyfarm/utils/log.dart';

import 'api_env.dart';
import 'api_service.dart';

InterceptorsWrapper requestInterceptor(Dio dio, Environment env) => InterceptorsWrapper(
  onRequest: (RequestOptions options) {
    final uri = options.uri.toString();

    if(ApiService().isInDebugMode) {
      Log.v("Api - URL: ${uri.toString()}");
      Log.v("Api - headers: ${options.headers}");
      Log.v("Api - Request Body: ${options.data}");
      Log.v("Api - Method: ${options.method}");
    }

    return options;
  },
);

InterceptorsWrapper responseInterceptor(Dio dio, Environment env) => InterceptorsWrapper(
    onResponse: (Response response) {

      if(ApiService().isInDebugMode) {
        Log.v("Api - Response headers");
        response?.headers?.forEach((k, v) {
          v.forEach((s) => print("$k , $s"));
        });
        Log.v("Api - Response: ${response?.data}");
      }

      return response;
    }
);

InterceptorsWrapper userAgentInterceptor(Dio dio) => InterceptorsWrapper(
    onRequest: (RequestOptions options) async {

      options.headers.putIfAbsent(ApiService.USER_AGENT, () => "android.ios.flutter.fun");
      return options;
    }
);