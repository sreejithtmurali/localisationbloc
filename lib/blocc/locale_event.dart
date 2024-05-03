part of 'locale_bloc.dart';

abstract class LocaleEvent {}
class ChangeLocale extends LocaleEvent{
  late Locale locale1;

  ChangeLocale({required this.locale1});
}
