import 'dart:html';
import 'package:angular/angular.dart';

// When you write a functional directive, follow these rules:

// Make the function return type void.
// In the @Directive() annotation, use only the selector parameter and, if necessary, providers.
int _idCounter = 0;

@Directive(selector: '[autoId]')
void autoIdDirective(
  Element element,
  @Attribute('autoId') String prefix,
) {
  element.id = '$prefix${_idCounter++}';
}
