import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_management_bloc/Bloc/theme_bloc.dart';
import 'package:theme_management_bloc/screens/HomePage.dart';
import 'package:theme_management_bloc/themeData/app_theme_data.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeBloc(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme,
          themeMode: state,
          darkTheme: darkTheme,
          home: MyHomePage(),
        );
      },
    );
  }
}
