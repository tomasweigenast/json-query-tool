import 'package:flutter_test/flutter_test.dart';
import 'package:json_query_tool/logic/query_parser.dart';

void main() {
  test("test tokenizer", () {
    expect(QueryParser("SELECT * FROM source WHERE level.nested >= 5 ORDER BY name LIMIT 10").tokens, equals(["SELECT", "*", "FROM", "source", "WHERE", "level.nested", ">=", "5", "ORDER", "BY", "name", "LIMIT", "10"]));
    expect(QueryParser("SELECT id, name,level WHERE level.nested >= 5").tokens, equals(["SELECT", "id", "name", "level", "WHERE", "level.nested", ">=", "5"]));
  });
}