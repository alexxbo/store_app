import 'dart:developer';

import 'package:http_interceptor/http_interceptor.dart';

class LoggerInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    log('\n----- Request -----');
    log(data.toString());
    log('----- End Request -----\n');

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    log('\n----- Response -----');
    log(data.toString());
    log('----- End Response -----\n');

    return data;
  }
}
