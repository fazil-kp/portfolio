import 'package:core/model/route_models.dart';

import '../helpers/scaffold.dart';
import '../screens/portfolio/portfolio_main_screen.dart';

List<CoreRouteModel> staticRouteList = [
  const CoreRouteModel(id: 3, name: 'Home', routeName: '/home', widget: CustomScaffold()),
];
List<CoreRouteModel> mainRouteList = [
  const CoreRouteModel(id: 1, name: 'Student', routeName: 'student', widget: CustomScaffold(childWidget: PortfolioMainScreen())),
];
