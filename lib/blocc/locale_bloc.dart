import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(LocaleInitial(locale: Locale('en'))) {
    on<ChangeLocale>((event, emit) {
      print("called");
     Locale l=event.locale1;
     print(l.toString());
     emit(LocaleState(locale: l));
    });
  }
}
