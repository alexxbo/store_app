import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

Log get logger => _getLogger();
_CustomLogger? _logger;

Log _getLogger() {
  return _logger ??= _CustomLogger()..init();
}

abstract class Log {
  void init();

  /// Log a verbose exception and a message with optional format args.
  /// [tag] Explicit tag. May be `null`.
  /// [message] Formatted log message.
  /// [error] Accompanying exceptions. May be `null`.
  void v({
    required String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  });

  /// Log an info exception and a message with optional format args.
  /// [tag] Explicit tag. May be `null`.
  /// [message] Formatted log message.
  /// [error] Accompanying exceptions. May be `null`.
  void i({
    required String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  });

  /// Log a debug exception and a message with optional format args.
  /// [tag] Explicit tag. May be `null`.
  /// [message] Formatted log message.
  /// [error] Accompanying exceptions. May be `null`.
  void d({
    required String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  });

  /// Log a warning exception and a message with optional format args.
  /// [tag] Explicit tag. May be `null`.
  /// [message] Formatted log message.
  /// [error] Accompanying exceptions. May be `null`.
  void w({
    required String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  });

  /// Log an error exception and a message with optional format args.
  /// [tag] Explicit tag. May be `null`.
  /// [message] Formatted log message.
  /// [error] Accompanying exceptions. May be `null`.
  void e({
    required String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  });
}

class _CustomLogger implements Log {
  final _logger = Logger('');

  @override
  void init() {
    hierarchicalLoggingEnabled = true;

    if (kDebugMode) {
      _logger.level = Level.ALL;

      Logger.root.onRecord.listen((record) {
        final sb = StringBuffer(
          '[${record.time}] [${getLevelLabel(record.level.name)}]',
        );
        if (record.error != null && record.stackTrace != null) {
          if (record.loggerName.isNotEmpty) {
            sb.write(' [${record.loggerName}]');
          }
          sb
            ..write(' [${record.error}]')
            ..write(' Message: ${record.message}')
            ..write(' Exception: ${record.stackTrace}');
        } else if (record.error != null) {
          if (record.loggerName.isNotEmpty) {
            sb.write(' [${record.loggerName}]');
          }
          sb
            ..write(' [${record.error}]')
            ..write(' Message: ${record.message}');
        } else {
          if (record.loggerName.isNotEmpty) {
            sb.write(' [${record.loggerName}]');
          }
          sb.write(' Message: ${record.message}');
        }
        developer.log(sb.toString());
      });
    }

    if (kReleaseMode) {
      _logger.level = Level.OFF;
    }
  }

  @override
  void d({
    required String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.fine(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.fine(message, error, stackTrace);
    }
  }

  @override
  void e({
    required String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.severe(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.severe(message, error, stackTrace);
    }
  }

  @override
  void i({
    String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.info(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.info(message, error, stackTrace);
    }
  }

  @override
  void v({
    String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.finer(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.finer(message, error, stackTrace);
    }
  }

  @override
  void w({
    String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.warning(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.warning(message, error, stackTrace);
    }
  }

  String getLevelLabel(String levelName) {
    switch (levelName) {
      case 'FINE':
        return 'Debug';
      case 'INFO':
        return 'Info';
      case 'WARNING':
        return 'Warning';
      case 'SEVERE':
        return 'Error';
      default:
        return 'Verbose';
    }
  }
}
