import 'dart:html';

import 'package:angular/angular.dart';

@Directive(selector: '[myHighlight]')
class HighlightDirective {
  final Element _element;
  HighlightDirective(this._element) {
    _element.style.backgroundColor = 'yellow';
  }

  @HostListener('mouseenter')
  void onMouseEnter() {
    _highlight(color: 'yellow');
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    _highlight();
  }

  void _highlight({String color}) {
    _element.style.backgroundColor = color;
  }
}
