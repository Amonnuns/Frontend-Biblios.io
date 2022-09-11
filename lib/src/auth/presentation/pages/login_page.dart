import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_flutter_desktop/resources/constants.dart';
import 'package:teste_flutter_desktop/resources/strings.dart';
import 'package:teste_flutter_desktop/src/auth/presentation/bloc/login_bloc.dart';
import 'package:teste_flutter_desktop/src/auth/presentation/bloc/login_state.dart';
import 'package:teste_flutter_desktop/src/auth/presentation/pages/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  late LoginBloc bloc;

  TextEditingController _loginController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      bloc: BlocProvider.of<LoginBloc>(context),
      builder: (context, state) {
        if (state is LoginLoadingState)
          return Center(child: CircularProgressIndicator());

        if (state is LoginSucessState) {
          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: SizedBox(
                width: 600,
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bem vindo ao ${Strings.titleMainScreen.toLowerCase()}!",
                      style: const TextStyle(fontSize: 24),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          60.0, defaultPadding, 60.0, defaultPadding),
                      child: TextField(
                        controller: _loginController,
                        decoration: const InputDecoration(
                            labelText: 'Login:',
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            labelStyle: TextStyle(
                              fontSize: 22,
                            )),
                        style: const TextStyle(
                          color: Colors.white54,
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          60.0, defaultPadding, 60.0, defaultPadding),
                      child: TextField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: const InputDecoration(
                            labelText: 'Password:',
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            labelStyle: TextStyle(
                              fontSize: 22,
                            )),
                        style: const TextStyle(
                          color: Colors.white54,
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(primaryColor),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(bgColor),
                        ),
                        onPressed: () {},
                        child: const Text('LOGIN')),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                              child: const Text('Cadastre-se')),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red)),
                            child: const Text('Esqueci a senha'),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          );
        }
        return Container(
          child: Text(state.toString()),
        );
      },
    );
  }
}

void _telaCadastro() {}
