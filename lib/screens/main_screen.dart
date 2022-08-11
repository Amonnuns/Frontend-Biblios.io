import 'package:flutter/material.dart';
import 'package:teste_flutter_desktop/resources/constants.dart';
import 'package:teste_flutter_desktop/resources/strings.dart';
import 'package:teste_flutter_desktop/src/auth/presentation/pages/login_page.dart';

class MainScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  DrawerHeader(
                    margin: const EdgeInsets.all(defaultPadding),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      Strings.titleMainScreen,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DrawerListTile(
                    title: Strings.listTileInicio,
                    press: () {},
                    icon: Icons.home,
                  ),
                  DrawerListTile(
                    title: Strings.listTileLivros,
                    press: () {},
                    icon: Icons.book_sharp,
                  ),
                  DrawerListTile(
                    title: Strings.listTilePerfil,
                    press: () {},
                    icon: Icons.person,
                  ),
                  DrawerListTile(
                    title: Strings.listTileAjuda,
                    press: () {},
                    icon: Icons.help,
                  ),
                  DrawerListTile(
                    title: Strings.listTileConfig,
                    press: () {},
                    icon: Icons.settings,
                  ),
                ],
              ),
            )),
            Expanded(
              flex: 5,
              child: LoginPage(),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.title, required this.press, this.icon})
      : super(key: key);

  final String title;
  final VoidCallback press;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
      horizontalTitleGap: 0.0,
      onTap: press,
      leading: Icon(icon ?? Icons.ten_k),
    );
  }
}
