import 'package:flutter_shop/util/logging/logger.dart';
import 'package:http_interceptor/http_interceptor.dart';

class LoggerInterceptor implements InterceptorContract {
  static const String _tag = 'Network';

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    logger.d(
      tag: _tag,
      message: '\n----- Request -----\n$data\n----- End Response -----',
    );

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    logger.d(
      tag: _tag,
      message: '\n----- Response -----\n$data\n----- End Response -----',
    );

    return data;
  }
}
