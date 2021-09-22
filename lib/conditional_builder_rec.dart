library conditional_builder;

import 'package:flutter/material.dart';



class ConditionalBuilderRec extends StatelessWidget {
  final bool condition;


  final WidgetBuilder builder;

  /// Run if [condition] is false and it is not null.
  final WidgetBuilder? fallback;

  const ConditionalBuilderRec({
    Key? key,
    required this.condition,
    required this.builder,
    this.fallback,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) =>
      condition ? builder(context) : fallback != null ? fallback!(context) : Container();
}
