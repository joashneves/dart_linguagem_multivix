import 'package:dart_linguagem_multivix/MyCreatedScreen.dart';
import 'package:dart_linguagem_multivix/MyDataScreen.dart';
import 'package:dart_linguagem_multivix/console.dart'; // Importa o ConsoleLivros (CRUD dos livros)
import 'package:flutter/material.dart'; // Importa o Flutter Material Design
import 'models/Livros.dart'; // Importa a classe Livros

// Função principal do Flutter, que roda o app
void main() {
  runApp(const MyApp()); // Inicia o aplicativo chamando MyApp
}

// Widget raiz do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp é o widget principal que define o tema e a navegação
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF2C2C2C), // Fundo escuro #2C2C2C
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87, // Cor da AppBar
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20), // Estilo do título
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey[800], // Botão escuro
            foregroundColor: Colors.white, // Texto branco
          ),
        ),
      ),
      home: const HomeScreen(), // Define a tela inicial como HomeScreen
    );
  }
}

// Tela inicial do app
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar no topo da tela inicial
      appBar: AppBar(
        title: const Text("Tela inicial"), // Título que aparece na AppBar
      ),
      body: Center(
        // Usamos uma coluna para ter dois botões, um embaixo do outro
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
          children: [
            // Botão para cadastrar um novo livro
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyCreateScreen()),
                );
              },
              child: const Text("Cadastrar livro"),
            ),
            const SizedBox(height: 20), // Espaço entre os botões

            // Botão que leva para a lista de livros
            ElevatedButton(
              child: const Text("Ir para lista"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataScrean()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
