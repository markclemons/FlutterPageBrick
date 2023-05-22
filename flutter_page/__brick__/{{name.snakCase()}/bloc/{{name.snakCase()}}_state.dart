part of '{{name.snakeCase()}}_bloc.dart';

class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State();

  @override
  List<Object> get props => [];
}

class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Loading extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Loaded extends {{name.pascalCase()}}State {
  final {{name.pascalCase()}}ViewModel {{name.pascalCase()}}ViewModel;

  const {{name.pascalCase()}}Loaded({required this.{{name.pascalCase()}}ViewModel});

  @override
  List<Object> get props => [{{name.pascalCase()}}ViewModel];
}

class {{name.pascalCase()}}Error extends {{name.pascalCase()}}State {
  final String errorMessage;
  const {{name.pascalCase()}}Error({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];
}