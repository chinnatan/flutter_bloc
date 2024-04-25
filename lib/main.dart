import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo_bloc/src/app_route.dart';
import 'package:flutter_demo_bloc/src/bloc/app_bloc_observer.dart';
import 'package:flutter_demo_bloc/src/bloc/counter_a_bloc/counter_a_bloc.dart';
import 'package:flutter_demo_bloc/src/bloc/counter_b_bloc/counter_b_bloc.dart';

import 'src/pages/home/home_page.dart';
void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counterABloc = BlocProvider<CounterABloc>(create: (context) => CounterABloc());
    final counterBBloc = BlocProvider<CounterBBloc>(create: (context) => CounterBBloc());

    return MultiBlocProvider(
      providers: [counterABloc, counterBBloc],
      child: MaterialApp(
        title: 'Flutter Demo BLOC',
        routes: AppRoute().getAll,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Home Page BLOC'),
      ),
    );
  }
}
