import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_management_bloc/Bloc/theme_events.dart';
import '../Bloc/theme_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme manage by bloc'),
        centerTitle: true,
        actions: [
          Switch(
            value: context.read<ThemeBloc>().state == ThemeMode.dark,
            onChanged: (value) {
              context.read<ThemeBloc>().add(ThemeChanged(value));
            },
          )
        ],
      ),
      body: Center(
        child: Text('Dark And Light Theme'),
      ),
      bottomSheet: Text('@Created BY Harshit vyas'),
    );
  }
}
