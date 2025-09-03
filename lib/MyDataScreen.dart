import 'package:flutter/material.dart';
import 'models/Livros.dart';
import 'console.dart';

// Tela que mostra a lista de livros
class MyDataScrean extends StatelessWidget {
  const MyDataScrean({super.key});

  @override
  Widget build(BuildContext context) {
    var console = ConsoleLivros(); // Instancia o ConsoleLivros
    final List<Livros> dados = console.listarLivros(); 
    // Aqui você chamou listarLivros(), mas no seu CRUD ele só imprime no console
    // → O ideal seria fazer listarLivros retornar a lista de livros para exibir na tela.

    return Scaffold(
      // AppBar na tela de lista
      appBar: AppBar(
        title: const Text("Lista de coisas"), // Título no topo da tela
      ),
      // Lista que mostra os livros
      body: ListView.builder(
        itemCount: dados.length, // Quantidade de itens da lista
        itemBuilder: (context, index) {
          final livro = dados[index]; // Pega o livro da posição atual
          return ListTile(
            title: Text(livro.titulo.toString()), // Título do livro
            subtitle: Text(
              "Autor: ${livro.autor}\nPáginas: ${livro.paginas} (${livro.lancamento.year})",
            ), // Autor, páginas e ano
          );
        },
      ),
    );
  }
}
