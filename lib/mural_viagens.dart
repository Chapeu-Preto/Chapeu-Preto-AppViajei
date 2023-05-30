import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'cadastrar_viagem.dart';

void main() {
  runApp(const MaterialApp(
    home: MuralViagens(),
  ));
}

class MuralViagens extends StatefulWidget {
  const MuralViagens({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MuralViagensState createState() => _MuralViagensState();
}

class _MuralViagensState extends State<MuralViagens> {
  List<Viagem> viagens = [
    Viagem(
      tipo: 'Praia',
      destino: 'Cancun',
      valor: 2500.0,
      roteiro: '7 dias de relaxamento nas praias paradisíacas de Cancun.',
      imagens: [],
    ),
    Viagem(
      tipo: 'Montanha',
      destino: 'Alpes Suíços',
      valor: 3500.0,
      roteiro: '10 dias de aventuras nas montanhas suíças.',
      imagens: [],
    ),
    // Adicione mais viagens cadastradas aqui
  ];

  Future<void> _adicionarImagem(int viagemIndex) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        viagens[viagemIndex].imagens.add(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mural de Viagens'),
      ),
      body: ListView.builder(
        itemCount: viagens.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Tipo: ${viagens[index].tipo}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Destino: ${viagens[index].destino}'),
                      Text('Valor: R\$ ${viagens[index].valor.toStringAsFixed(2)}'),
                      Text('Roteiro: ${viagens[index].roteiro}'),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: viagens[index].imagens.length,
                    itemBuilder: (BuildContext context, int imageIndex) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.file(
                          viagens[index].imagens[imageIndex] as File,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10.0
                ),
                TextButton(
                  onPressed: () => _adicionarImagem(index),
                  child: const Text(
                    'Adicionar Imagem'
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Viagem {
  final String tipo;
  final String destino;
  final double valor;
  final String roteiro;
  final List<String> imagens;

  Viagem({
    required this.tipo,
    required this.destino,
    required this.valor,
    required this.roteiro,
    required this.imagens,
  });
}