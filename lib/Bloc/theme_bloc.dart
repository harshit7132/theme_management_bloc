import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:theme_management_bloc/Bloc/theme_events.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> {
  ThemeBloc() : super(ThemeMode.light) {
    on<ThemeChanged>((event, emit) {
      emit(event.isDark ? ThemeMode.dark : ThemeMode.light);
    });
  }
}
