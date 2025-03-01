abstract class ConnectRepository {
  Future<String> getGoogleAuthUrl();
  Future<void> handleCallback(String code);
  Future<bool> hasValidAccessToken();
}
