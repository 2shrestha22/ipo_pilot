import 'package:chopper/chopper.dart';

part "cdsc_service.chopper.dart";

@ChopperApi(baseUrl: "/auth")
abstract class LoginService extends ChopperService {
  static LoginService create([ChopperClient? client]) => _$LoginService(client);
}

@ChopperApi(baseUrl: "/todos")
abstract class TodosListService extends ChopperService {
  static TodosListService create([ChopperClient? client]) =>
      _$TodosListService(client);
}
