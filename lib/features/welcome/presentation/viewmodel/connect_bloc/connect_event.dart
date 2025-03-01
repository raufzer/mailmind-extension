part of 'connect_bloc.dart';

@immutable
abstract class ConnectEvent {}

class InitiateGoogleConnect extends ConnectEvent {}

class HandleGoogleCallback extends ConnectEvent {
  final String code;

  HandleGoogleCallback(this.code);
}

class CheckAuthStatus extends ConnectEvent {}
