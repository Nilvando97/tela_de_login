import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/autenticação_model.dart';
import 'views/pagina_login.dart';

void main() {
 runApp(
    ChangeNotifierProvider(
      create: (context) => EstatdoAutenticacao(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Tela de Login'),
          ),
        ),
        body: PaginaLogin(),
      ),
    );
  }
}
