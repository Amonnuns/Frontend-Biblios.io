import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_flutter_desktop/src/auth/presentation/bloc/login_event.dart';
import 'package:teste_flutter_desktop/src/auth/presentation/bloc/login_state.dart';

import '../pages/login_page.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(LoginLoadingState()) {
    on<LoginPageBuild>(_buildLoginPage);
  }

  Future<void> _buildLoginPage(
    LoginPageBuild event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginSucessState());
  }
}
