import 'package:bloc/bloc.dart';
import 'package:mail_mind_extension/features/welcome/data/repositories/connect_repo.dart';
import 'package:meta/meta.dart';

part 'connect_event.dart';
part 'connect_state.dart';

class ConnectBloc extends Bloc<ConnectEvent, ConnectState> {
  final ConnectRepository connectRepository;

  ConnectBloc({required this.connectRepository}) : super(ConnectInitial()) {
    on<InitiateGoogleConnect>(_onInitiateGoogleConnect);
    on<HandleGoogleCallback>(_onHandleGoogleCallback);
    on<CheckAuthStatus>(_onCheckAuthStatus);
  }

  Future<void> _onInitiateGoogleConnect(
    InitiateGoogleConnect event,
    Emitter<ConnectState> emit,
  ) async {
    try {
      emit(ConnectLoading());
      final authUrl = await connectRepository.getGoogleAuthUrl();
      emit(ConnectRedirectingToGoogle(authUrl));
    } catch (error) {
      emit(ConnectFailure(error.toString()));
    }
  }

  Future<void> _onHandleGoogleCallback(
    HandleGoogleCallback event,
    Emitter<ConnectState> emit,
  ) async {
    try {
      emit(ConnectAuthenticating());
      await connectRepository.handleCallback(event.code);

      final hasToken = await connectRepository.hasValidAccessToken();
      if (hasToken) {
        emit(ConnectSuccess());
      } else {
        emit(ConnectFailure('Authentication failed'));
      }
    } catch (error) {
      emit(ConnectFailure(error.toString()));
    }
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatus event,
    Emitter<ConnectState> emit,
  ) async {
    try {
      final hasToken = await connectRepository.hasValidAccessToken();
      if (hasToken) {
        emit(ConnectSuccess());
      } else {
        emit(ConnectInitial());
      }
    } catch (error) {
      emit(ConnectFailure(error.toString()));
    }
  }
}
