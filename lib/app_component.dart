import 'package:angular/angular.dart';
import 'package:angular_dart_koans/src/highlight_directive.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, HighlightDirective],
)
class AppComponent {
  String color;
}
