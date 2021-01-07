import 'dart:html';

import 'package:angular/angular.dart';

@Directive(selector: '[myHighlight]')
class HighlightDirective {
  final Element _element;
  @Input('myHighlight')
  String highlightColor;

  @Input()
  String defaultColor;

  HighlightDirective(this._element);

  @HostListener('mouseenter')
  void onMouseEnter() => _highlight(color: highlightColor ?? defaultColor ?? 'red');

  @HostListener('mouseleave')
  void onMouseLeave() => _highlight();

  void _highlight({String color}) {
    _element.style.backgroundColor = color;
  }
}
