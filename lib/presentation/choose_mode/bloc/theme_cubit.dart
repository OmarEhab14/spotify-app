import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) {
    emit(themeMode);
    log('theme mode changed');
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    
  }
  
}