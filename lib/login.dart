import 'package:flutter/material.dart';
import 'package:mask/mask/mask.dart';
import 'package:viajei_app/cadastro_usuario.dart';
import 'package:viajei_app/mural_viagens.dart';
import 'package:viajei_app/recuperar_senha.dart';


class LoginPage extends StatelessWidget {
 
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  bool teste = true; 
  final bool _showPassword = false; 
  String email = "higor@hotmail.com"; 
  String password = "12345678";

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 128,
                      height: 128,
                      child: Image.asset(
                        'assets/logo.png'
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 100,
                      height: 35,
                      child: Image.asset(
                        'assets/nome.png'
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: SizedBox(
                          width: 350,
                        child: TextFormField(
                          controller: _emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) => Mask.validations.email(value),
                          onSaved: (newValue) => email = newValue!,
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email
                            ),
                            labelText: "E-mail",
                            labelStyle: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 20
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        8.0
                      ),
                      child: SizedBox(
                        width: 350,
                        child: TextFormField(
                          controller: _senhaController,
                          obscureText: !_showPassword,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent
                              ),
                            ),
                            labelText: "Senha",
                            labelStyle: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                          validator: (senha) {
                          if (senha == null || senha.isEmpty){
                            return 'Você Deve Digitar sua senha';
                          } else if (senha.length < 8){
                            return 'A senha deve conter 8 caracters';
                          } else if (senha != '12345678') {
                            return 'Login ou senha invalido';
                          }
                            return null;
                          },
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                      ),
                      child: Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: const Text(
                            "Recuperar Senha",
                            textAlign: TextAlign.right,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RecuperarSenha(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        40.0
                      ),
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.3, 1],
                            colors: [
                              Color(0xFFF58524),
                              Color(0XFFF92B7F),
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: SizedBox.expand(
                          child: TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  "Entrar",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()){
                                Navigator.push(
                                    context,
                                  MaterialPageRoute(
                                    builder: (context) => MuralViagens(),
                                  ),
                                ); 
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextButton(
                        child: const Text(
                          "Cadastre-se",
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CadastroUsuario(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          )
        )
      ),
    );
  }
}