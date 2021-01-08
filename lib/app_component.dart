import 'package:angular/angular.dart';
import 'package:angular_dart_koans/src/auto_id_directive.dart';
import 'package:angular_dart_koans/src/highlight_directive.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, HighlightDirective, autoIdDirective],
)
class AppComponent {
  String color;
}
