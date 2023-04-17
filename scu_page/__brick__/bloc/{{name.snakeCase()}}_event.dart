part of '{{name.snakeCase()}}_bloc.dart';

abstract class {{name.pascalCase()}}Event extends Equatable {
  const {{name.pascalCase()}}Event();

  @override
  List<Object> get props => [];
}

class {{name.pascalCase()}}LoadStarted extends {{name.pascalCase()}}Event {
final Locale locale;

const {{name.pascalCase()}}LoadStarted(this.locale);
}