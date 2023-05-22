import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shift/shift.dart';
import 'view_models/{{name.snakeCase()}}_viewmodel.dart';

class {{name.pascalCase()}}LoadedView extends StatelessWidget {
  final {{name.pascalCase()}}ViewModel {{name.pascalCase()}}ViewModel;

  const {{name.pascalCase()}}LoadedView({
    Key? key,
    required this.{{name.pascalCase()}}ViewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context)!;

    return AdaptiveLayout(
      extraSmall:{{name.pascalCase()}}SmallView(),
      small: {{name.pascalCase()}}SmallView(),
      small: {{name.pascalCase()}}SmallView(),
      medium: {{name.pascalCase()}}SmallView(),
      large: {{name.pascalCase()}}SmallView(),
      extraLarge: {{name.pascalCase()}}SmallView(),
    );x``
  }
}

class {{name.pascalCase()}}SmallView extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
