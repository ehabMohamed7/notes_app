import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObsever extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change: $change');
  }
}
