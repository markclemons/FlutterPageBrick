import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/{{name.snakeCase()}}_bloc.dart';

import '{{name.snakeCase()}}_loaded_view.dart';

class {{name.pascalCase()}} extends StatelessWidget {
  const {{name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {
    final Locale appLocale = Localizations.localeOf(context);

    return BlocConsumer<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is {{name.pascalCase()}}Initial) {
          context.read<{{name.pascalCase()}}Bloc>().add({{name.pascalCase()}}LoadStarted(appLocale));
          
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is {{name.pascalCase()}}Loading) {
          //TODO: Replace with Skeleton Loader
           return const Text('replace with a Skeleton Loader');
       }

        if (state is {{name.pascalCase()}}Loaded) {
          return {{name.pascalCase()}}LoadedView({{name.pascalCase()}}ViewModel: state.{{name.pascalCase()}}ViewModel);
        }

        if (state is {{name.pascalCase()}}Error) {
          //TODO: Replace with Error View
          return const Text('Replace with Error view');
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
