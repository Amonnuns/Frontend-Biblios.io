import 'package:flutter/material.dart';

import '../../../../resources/strings.dart';

class SignUpPage extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Strings.signUpTitleText),
                const SizedBox(),
                _buildFormField('Name', _nameController),
                _buildFormField('Email', _emailController),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("VOLTA"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_buildFormField(String fieldname, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: '$fieldname:',
        floatingLabelAlignment: FloatingLabelAlignment.start,
        labelStyle: const TextStyle(
          fontSize: 22,
        ),
      ),
    ),
  );
}
