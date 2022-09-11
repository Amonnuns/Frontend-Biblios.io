import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_flutter_desktop/src/auth/presentation/bloc/login_event.dart';
import 'package:teste_flutter_desktop/src/auth/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginLoadingState()) {
    on<LoginPageBuild>(_buildLoginPage);
  }

  LoginEvent? _previousEvent;

  void onEvent(LoginEvent event) {
    _previousEvent = event;
    super.onEvent(event);
  }

  void retry() {
    if (_previousEvent != null) {
      add(_previousEvent!);
    }
  }

  Future<void> _buildLoginPage(
    LoginPageBuild event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginSucessState());
  }
}
