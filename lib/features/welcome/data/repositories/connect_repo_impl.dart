import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:mail_mind_extension/features/welcome/data/repositories/connect_repo.dart';

class ConnectRepositoryImpl implements ConnectRepository {
  final String baseUrl;
  final Dio _dio;
  final CookieJar _cookieJar;

  ConnectRepositoryImpl({required this.baseUrl, Dio? dio, CookieJar? cookieJar})
    : _dio = dio ?? _createDio(baseUrl),
      _cookieJar = cookieJar ?? CookieJar() {
    _dio.interceptors.add(CookieManager(_cookieJar));
  }

  static Dio _createDio(String baseUrl) {
    return Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        validateStatus: (status) => status! < 500,
      ),
    );
  }

  @override
  Future<String> getGoogleAuthUrl() async {
    try {
      final response = await _dio.post('/auth/connect');

      if (response.statusCode == 200) {
        return response.data['authUrl'];
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          message: 'Failed to get auth URL',
        );
      }
    } on DioException catch (e) {
      throw Exception(e.message ?? 'Failed to get auth URL');
    }
  }

  @override
  Future<void> handleCallback(String code) async {
    try {
      final response = await _dio.get(
        '/auth/callback',
        queryParameters: {'code': code},
      );

      if (response.statusCode != 200) {
        throw DioException(
          requestOptions: response.requestOptions,
          message: 'Failed to exchange code for token',
        );
      }
    } on DioException catch (e) {
      throw Exception(e.message ?? 'Failed to exchange code for token');
    }
  }

  @override
  Future<bool> hasValidAccessToken() async {
    try {
      final cookies = await _cookieJar.loadForRequest(Uri.parse(baseUrl));
      return cookies.any(
        (cookie) =>
            cookie.name == 'accessToken' &&
            cookie.expires != null &&
            cookie.expires!.isAfter(DateTime.now()),
      );
    } catch (e) {
      return false;
    }
  }
}
