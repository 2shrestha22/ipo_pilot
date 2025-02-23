import 'package:chopper/chopper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ipo_pilot/api/cdsc_service.dart';

final clientProvider = Provider(
  (ref) => ChopperClient(
    baseUrl: Uri.parse("https://webbackend.cdsc.com.np/api/meroShare"),
    services: [
      // Create and pass an instance of the generated service to the client
      LoginService.create(),
    ],
  ),
);
