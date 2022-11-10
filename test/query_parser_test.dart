import 'package:flutter_test/flutter_test.dart';
import 'package:json_query_tool/logic/query_parser.dart';

void main() {
  test("test tokenizer", () {
    expect(QueryParser("SELECT * FROM source WHERE level.nested >= 5 ORDER BY name LIMIT 10").tokens, equals(["SELECT", "*", "FROM", "source", "WHERE", "level.nested", ">=", "5", "ORDER", "BY", "name", "LIMIT", "10"].reversed));
    expect(QueryParser("SELECT id, name,level WHERE level.nested >= 5").tokens, equals(["SELECT", "id", "name", "level", "WHERE", "level.nested", ">=", "5"].reversed));
  });

  test("test parse SELECT", () {
    expect(QueryParser("SELECT * FROM source WHERE level.nested >= 5 ORDER BY name LIMIT 10").select, equals(["*"]));
    expect(QueryParser("SELECT id, name,level WHERE level.nested >= 5").select, equals(["id", "name", "level"]));
  });

  test("test parse WHERE", () {
    expect(QueryParser("SELECT * FROM source WHERE level.nested >= 5 ORDER BY name LIMIT 10").filters, equals([WhereFilter("level.nested", ">=", "5")]));
    expect(QueryParser("SELECT * WHERE level.nested < 5 AND name = 'tomas'").filters, equals([WhereFilter("level.nested", "<", "5"), WhereFilter("name", "=", "'tomas'")]));
  });
}