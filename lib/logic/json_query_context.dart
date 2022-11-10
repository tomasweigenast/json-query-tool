import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

class JsonQueryContext {
  late final dynamic _json;
  final Completer loadCompleter = Completer();

  JsonQueryContext.string(String json) {
    compute(_parseJson, json, debugLabel: "_parseJson").then((value) {
      loadCompleter.complete();
      _json = value;
    }).catchError((error) {
      loadCompleter.completeError(error);
    });
  }
}

dynamic _parseJson(String json) {
  return jsonDecode(json);
}