import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '_model/cadastro.dart';

class SignUp extends StatefulWidget {
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  Cadastro cadastro = new Cadastro();
  final _formkey = GlobalKey<FormState>();
  String name = " ";
  bool nameChangeVisibible = true;
  var color = Colors.blue;
  var buttonContext = "Enviar";
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Builder(
                builder: (context) => Scaffold(
                    body: SafeArea(
                        child: Form(
                            key: _formkey,
                            child: Center(
                                child: Column(children: <Widget>[
                              TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Digite seu Nome'),
                                  onSaved: (value) {
                                    cadastro.setNome(value);
                                  },
                                  onChanged: (value) {
                                    Provider.of<Cadastro>(context,
                                            listen: false)
                                        .setNome(value);
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Você precisa digitar algum nome';
                                    }
                                    return null;
                                  }),
                              TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Digite seu e-mail'),
                                  onSaved: (value) {
                                    cadastro.setEmail(value);
                                  },
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        !value.contains("@")) {
                                      return 'Você precisa digitar um e-mail valido';
                                    }
                                  }),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Digite seu Telefone Principal'),
                                keyboardType: TextInputType.number,
                                onSaved: (value) {
                                  cadastro.setTelefone(value);
                                },
                              ),
                              TextFormField(
                                decoration:
                                    InputDecoration(hintText: 'Digite seu CEP'),
                                keyboardType: TextInputType.number,
                                onSaved: (value) {
                                  cadastro.setCep(value);
                                },
                              ),
                              TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Passe a url de sua Foto'),
                                  onSaved: (value) {
                                    cadastro.setUrl(value);
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Digite uma url valida';
                                    }
                                  }),
                              SizedBox(height: 18.0),
                              ElevatedButton(
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      _formkey.currentState!.save();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content:
                                                  Text('Processing Data')));
                                      setState(() {
                                        color = Colors.green;
                                        buttonContext = "Done";
                                        nameChangeVisibible = false;
                                      });
                                    }
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(color)),
                                  child: Text("${buttonContext}")),
                              Column(children: [
                                Consumer<Cadastro>(
                                    builder: (context, cadastro, child) =>
                                        Visibility(
                                          child:
                                              Text(" Nome de Usuario: $name"),
                                          visible: nameChangeVisibible,
                                        )),
                                Visibility(
                                  child: Column(
                                    children: [
                                      Text("Cadastradando"),
                                      Text("Nome: ${cadastro.getNome()}"),
                                      Text("Email: ${cadastro.getEmail()}"),
                                      Text("CEP: ${cadastro.getCep()}"),
                                      Text(
                                          "Telefone: ${cadastro.getTelefone()}"),
                                      Text("Url: ${cadastro.getUrl()}"),
                                    ],
                                  ),
                                  visible: !nameChangeVisibible,
                                )
                              ]),
                            ]))))))));
  }
}
