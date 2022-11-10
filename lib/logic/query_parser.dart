const _kKeywords = ["SELECT", "WHERE", "LIMIT", "FROM", "ORDER", "BY"];
const _kFilterKeywords = ["AND", "OR"];

class QueryParser {
  final String query;
  
  late final List<String> tokens;

  final List<String> select = [];
  final List<WhereFilter> filters = [];
  final List<String> ordering = [];

  QueryParser(this.query) {
    _parse();
  }

  void _parse() {
    _tokenize();

    var tokens = List<String>.from(this.tokens);
    while(true) {
      try {
        var token = tokens.removeLast();

        // get SELECT tokens
        if(token == "SELECT") {
          while(true) {
            token = tokens.removeLast();
            if(_kKeywords.contains(token)) {
              break;
            }

            select.add(token);
          }
        }

        // get filters
        if(token == "WHERE") {
          while(true) {
            var token = tokens.removeLast();
            if(_kFilterKeywords.contains(token)) {
              continue;
            }

            if(_kKeywords.contains(token)) {
              break;
            }

            String property = token;
            String operation = tokens.removeLast();
            String value = tokens.removeLast();

            filters.add(WhereFilter(property, operation, value));
          }
        }
      } catch(_) {
        break;
      }
    }
  }

  void _tokenize() {
    var tokens = <String>[];
    var tempTokens = query.split(RegExp(r"(,| )"));
    for(var tmp in tempTokens) {
      tmp = tmp.trim();
      
      if(tmp.isEmpty) {
        continue;
      }

      tokens.add(tmp);
    }

    this.tokens = tokens.reversed.toList();
  }
}

class WhereFilter {
  final String property;
  final String operation;
  final String value;

  WhereFilter(this.property, this.operation, this.value);

  @override
  String toString() => "$property $operation $value";

  @override
  int get hashCode => Object.hash(property, operation, value);
  
  @override
  bool operator ==(Object other) {
    if(other is! WhereFilter) {
      return false;
    }

    return property == other.property && operation == other.operation && value == other.value;
  }
}