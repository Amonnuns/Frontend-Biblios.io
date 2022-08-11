import 'package:flutter/material.dart';
import 'package:teste_flutter_desktop/resources/constants.dart';
import 'package:teste_flutter_desktop/resources/strings.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Container(
          width: 600,
          height: 600,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bem vindo ao ${Strings.titleMainScreen.toLowerCase()}!",style: TextStyle(fontSize: 24),),
              Padding(
                padding: const EdgeInsets.fromLTRB(60.0, defaultPadding, 60.0, defaultPadding),
                child: TextField(
                  controller: _loginController,
                  decoration: InputDecoration(
                    labelText: 'Login:',
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    labelStyle: TextStyle(
                      fontSize: 22,
                    )
                  ),
                  style: TextStyle(
                    color: Colors.white54,
                    decorationStyle: TextDecorationStyle.solid,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60.0, defaultPadding, 60.0, defaultPadding),
                child: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: 'Password:',
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      labelStyle: TextStyle(
                        fontSize: 22,
                      )
                  ),
                  style: TextStyle(
                    color: Colors.white54,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(primaryColor), foregroundColor: MaterialStateProperty.all<Color>(bgColor),
              ),
                  onPressed: (){},
                  child: const Text('LOGIN')),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                TextButton(onPressed: (){}, child: Text('Cadastre-se')),
                TextButton(onPressed: (){}, child: Text('Esqueci a senha'),style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.red)),),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
