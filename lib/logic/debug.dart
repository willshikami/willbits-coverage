library sil_logger;

import 'package:logger/logger.dart';

class TheLogger {
  final _logger = Logger();
  static final TheLogger _singleton = TheLogger._internal();
  factory TheLogger() {
    return _singleton;
  }
  TheLogger._internal();
  static void debug(message) => TheLogger()._logger.d(message);
  static void info(message) => TheLogger()._logger.i(message);
  static void warning(message) => TheLogger()._logger.w(message);
  static void error(message) => TheLogger()._logger.e(message);
}
