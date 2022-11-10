import 'package:json_query_tool/logic/json_query_context.dart';
import 'package:stacked/stacked.dart';

class QueryJsonProvider extends BaseViewModel {
  static QueryJsonProvider get instance => QueryJsonProvider._();
  
  QueryJsonProvider._();

  bool _hasResults = false;
  Duration? _executionTime;
  Iterable<Map<dynamic, dynamic>>? _result;
  List<String>? _columns;

  bool get hasResults => _hasResults;
  Iterable<Map<dynamic, dynamic>> get result => _result!;
  List<String> get columns => _columns!;
  Duration get executionTime => _executionTime!;

  Future<void> runQuery(String query) async {
    Stopwatch stopwatch = Stopwatch()..start();
    var result = JsonQueryContext.current.executeQuery(query);
    _result = result;
    _hasResults = true;
    _columns = result.first.entries.map((e) => e.key.toString()).toList();
    
    stopwatch.stop();
    _executionTime = stopwatch.elapsed;

    notifyListeners();
  }

  void reset() {
    _hasResults = false;
    _result = null;
    _columns = null;
    _executionTime = null;
    notifyListeners();
  }
}