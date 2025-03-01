part of 'connect_bloc.dart';

@immutable
abstract class ConnectState {}

class ConnectInitial extends ConnectState {}

class ConnectLoading extends ConnectState {}

class ConnectRedirectingToGoogle extends ConnectState {
  final String authUrl;

  ConnectRedirectingToGoogle(this.authUrl);
}

class ConnectAuthenticating extends ConnectState {}

class ConnectSuccess extends ConnectState {}

class ConnectFailure extends ConnectState {
  final String error;

  ConnectFailure(this.error);
}
