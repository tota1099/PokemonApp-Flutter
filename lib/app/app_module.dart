import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';
import 'modules/pokemon/list.dart';
import 'modules/pokemon/detail.dart';
import 'app_bloc.dart';

class AppModule extends MainModule {

  // here will be any class you want to inject into your project (eg bloc, dependency)
  @override
  List<Bind> get binds => [
    Bind((i) => AppBloc()),
  ];

  // here will be the routes of your module
  @override
  List<Router> get routers => [
      Router("/", child: (_, args) => HomePage()),
      Router("/pokedetail", child: (_, args) => PokeDetail(pokemon: args.data))
  ];

// add your main widget here
  @override
  Widget get bootstrap => AppWidget();
}