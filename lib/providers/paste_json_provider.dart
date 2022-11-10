import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:json_query_tool/logic/json_query_context.dart';
import 'package:stacked/stacked.dart';

class PasteJsonProvider extends BaseViewModel {
  Future<bool> pasteJson(dynamic input, {bool isFile = false}) {
    return runBusyFuture(Future(() async {
      if(isFile) {
        await compute<Stream<List<int>>, String>(_readFile, input as Stream<List<int>>);
      }
      
      var context = JsonQueryContext.string(input as String);
      try {
        await context.loadCompleter.future;
        return true;
      } catch(err) {
        return false;
      }
    }), busyObject: isFile);
  }
}

Future<String> _readFile(Stream<List<int>> stream) async {
  var input = "";
  var completer = Completer<String>();
  StreamSubscription? subscription;
  subscription = stream.transform(utf8.decoder).listen((event) { 
    input += event;
  }, cancelOnError: false, onDone: () {
    subscription?.cancel();
    completer.complete(input);
  });

  return completer.future;
}