import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../compronentes/decoracao_campo_cadastro.dart';
import '../model/autenticação_model.dart';

class PaginaLogin extends StatelessWidget {
  PaginaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final estatdoAutenticacao = Provider.of<EstatdoAutenticacao>(context);

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: getAuthenticationInputDecoration("E-mail",
                    icon: Icons.email),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration:
                    getAuthenticationInputDecoration("Senha", icon: Icons.lock),
                obscureText: true,
              ),
              const SizedBox(
                height: 8,
              ),
              Visibility(
                visible: !estatdoAutenticacao.queroEntrar,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: getAuthenticationInputDecoration(
                          "Confirme Senha",
                          icon: Icons.check),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: getAuthenticationInputDecoration("Nome",
                          icon: Icons.person),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(estatdoAutenticacao.queroEntrar ? "Entrar" : "Cadastrar"),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  estatdoAutenticacao.toggleAuthMode();
                },
                child: Text(estatdoAutenticacao.queroEntrar
                    ? "Ainda não tem uma conta? Cadastre-se!"
                    : "Já tem uma conta? Entre!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
