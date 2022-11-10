import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

class JsonQueryContext {
  static late JsonQueryContext _i;

  static JsonQueryContext get current => _i;

  late final dynamic _json;
  final Completer loadCompleter = Completer();

  JsonQueryContext.string(String json) {
    _i = this;

    compute(_parseJson, json, debugLabel: "_parseJson").then((value) {
      _json = value;
      loadCompleter.complete();
    }).catchError((error) {
      loadCompleter.completeError(error);
    });
  }

  Iterable<Map<String, dynamic>> executeQuery(String query) {
    return (_json as List<dynamic>).cast<Map<String, dynamic>>().toList();
  }
}

dynamic _parseJson(String json) {
  return jsonDecode(json);
}