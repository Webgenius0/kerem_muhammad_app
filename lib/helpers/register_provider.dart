import 'package:kerem_muhammad_app/provider/all_provider.dart';
import 'package:provider/provider.dart';
import '../provider/auth_provider.dart';

var providers = [
  ChangeNotifierProvider<AuthProvider>(create: ((context) => AuthProvider())),
  ChangeNotifierProvider<AllProviders>(create: ((context) => AllProviders())),
];
