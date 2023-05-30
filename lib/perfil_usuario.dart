import 'package:flutter/material.dart';
import 'package:viajei_app/cadastrar_viagem.dart';

/*class PerfilUsuario extends StatelessWidget {
  const PerfilUsuario({super.key});*/

class UserProfile extends StatelessWidget {
  final String firstName;
  final String profileImageUrl;

  const UserProfile({super.key, required this.firstName, required this.profileImageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 120,
                  ),
                  child: Image.asset('assets/logo.png',
                    width: 30, 
                    height: 30, 
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 25,
                    right: 120,
                  ),
                  child: Image.asset('assets/nome.png',
                    width: 25,
                    height: 25
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left:20,
                ),
                child: Expanded(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(profileImageUrl),
                    radius: 20,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Expanded(
                  child: Text(
                    'Olá, $firstName!',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ), 
          const SizedBox(height: 10),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(
              right: 265,
            ),
            child: Text(
              'INDICAÇÕES',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(
              right: 230,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cadastrar_Viagem(),
                  ),
                );
              },
              child: const Text('Cadastrar Viagem'),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(
              right: 205,
            ),
            child: ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Roteiros Cadastrados'),
            ),
          ),
        ],
      ),
    );
  }
}