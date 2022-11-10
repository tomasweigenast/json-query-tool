class QueryParser {
  final String query;
  
  late final List<String> tokens;

  QueryParser(this.query) {
    _parse();
  }

  void _parse() {
    _tokenize();
  
  }

  void _tokenize() {
    tokens = [];
    var tempTokens = query.split(RegExp(r"(,| )"));
    for(var tmp in tempTokens) {
      tmp = tmp.trim();
      
      if(tmp.isEmpty) {
        continue;
      }

      tokens.add(tmp);
    }
  }
}