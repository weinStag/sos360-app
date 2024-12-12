import 'package:flutter/material.dart';
import 'package:sos360_app/screens/edit_profile_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Opções',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  ListTile(
                    title: const Text('Tema escuro'),
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: Text('Editar informações de perfil'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfilePage(),
                        ),
                      );
                    },
                  ),
                  const ListTile(
                    title: Text('Sair'),
                    trailing: Icon(Icons.logout),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
