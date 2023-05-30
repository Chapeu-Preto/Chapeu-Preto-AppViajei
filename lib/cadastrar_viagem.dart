import 'package:flutter/material.dart';
import 'mural_viagens.dart';

class Cadastrar_Viagem extends StatefulWidget {
  const Cadastrar_Viagem({super.key});

 @override
  _Cadastrar_ViagemState createState() => _Cadastrar_ViagemState();
}

class _Cadastrar_ViagemState extends State<Cadastrar_Viagem> {
  get _formKey => null;

  @override
  Widget build(BuildContext context) {
    // implemente aqui o corpo do widget
    String _tipo;
    String _destino;
    double _valor;
    String _roteiro;
    String _imageUrl;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Tipo de Viagem',
                ),
                validator: (value) {
              if (value!.isEmpty) {
                    return 'Você deve inserir o tipo de viagem';
                  }
                  return null;
                },
                onSaved: (value) => _tipo = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Destino',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Você deve inserir o destino da viagem';
                  }
                  return null;
                },
                onSaved: (value) => _destino = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Data',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Você deve inserir a data da viagem';
                  }
                  return null;
                },
                onSaved: (value) {
                  var _data = DateTime.parse(value!);
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Valor',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Você deve inserir o valor da viagem';
                  }
                  return null;
                },
                onSaved: (value) => _valor = double.parse(value!),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Roteiro da Viagem',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Você deve inserir o roteiro da viagem';
                  }
                  return null;
                },
                onSaved: (value) => _roteiro = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'URL da Foto',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Você devec inserir a URL da foto do perfil';
                  }
                  return null;
                },
                onSaved: (value) => _imageUrl = value!,
              ),
              const SizedBox(
                height:40,
              ),
              Container(
                height: 60,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft, 
                    end:Alignment.bottomRight, 
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF58524),
                      Color(0xFFF92B7F),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox(
                  child: TextButton(
                      onPressed: () {  
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MuralViagens(),
                          ),
                        ); 
                      },
                    child: Row(mainAxisAlignment: 
                      MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Entrar", 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize:20,
                          ),
                        ),
                      ],
                    )
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
// ignore: non_constant_identifier_names
RaisedButton(
  {required Color Color,
    required Color textColor,
    required EdgeInsets padding,
    required Text child,
    required Null 
    Function() onPressed, 
    required RoundedRectangleBorder shape, 
    required Color color
  }
) 
  {

  }
