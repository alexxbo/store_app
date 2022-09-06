import 'package:flutter_shop/common/data/storage/user_storage.dart';
import 'package:flutter_shop/util/logging/logger.dart';
import 'package:http_interceptor/http_interceptor.dart';

class UserTokenInterceptor implements InterceptorContract {
  UserTokenInterceptor(this.storage);

  final IUserStorage storage;

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    try {
      final user = await storage.getSavedUser();
      data.params['auth'] = user?.token ?? '';
    } on Object catch (error, stackTrace) {
      logger.e(message: null, error: error, stackTrace: stackTrace);
    }

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async =>
      data;
}
