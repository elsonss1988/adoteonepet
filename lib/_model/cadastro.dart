import 'package:flutter/material.dart';

class Cadastro with ChangeNotifier {
  String nome = "";
  String email = "";
  String telefone = "11999000999";
  String cep = "06250-000";
  String url = "";

  void setNome(novoNome) {
    nome = novoNome;
    notifyListeners();
  }

  void setEmail(novoEmail) {
    email = novoEmail;
    notifyListeners();
  }

  void setTelefone(novoTelefone) {
    telefone = novoTelefone;
    notifyListeners();
  }

  void setCep(novoCep) {
    cep = novoCep;
    notifyListeners();
  }

  void setUrl(novaUrl) {
    url = novaUrl;
    notifyListeners();
  }

  String getNome() {
    return nome;
  }

  String getEmail() {
    return email;
  }

  String getTelefone() {
    return telefone;
  }

  String getUrl() {
    return url;
  }

  String getCep() {
    return cep;
  }
}
