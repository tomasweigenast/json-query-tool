import 'package:code_text_field/code_text_field.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:json_query_tool/providers/query_json_provider.dart';
import 'package:stacked/stacked.dart';

class EditorView extends StatefulWidget {
  const EditorView({super.key});

  @override
  State<EditorView> createState() => _EditorViewState();
}

class _EditorViewState extends State<EditorView> {

  late final CodeController controller;

  @override
  void initState() {
    super.initState();

    controller = CodeController(
      stringMap: {
        "SELECT": const TextStyle(color: Colors.red)
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewModelBuilder.reactive(
        disposeViewModel: false,
        createNewModelOnInsert: false,
        viewModelBuilder: () => QueryJsonProvider.instance, 
        builder: (context, model, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DefaultTextStyle(
                style: const TextStyle(fontSize: 12, color: Colors.black),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () => model.runQuery(controller.text),
                      child: Row(
                        children: const [
                          Icon(Icons.play_arrow_rounded),
                          SizedBox(width: 5),
                          Text("Run query")
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: model.reset,
                      child: Row(
                        children: const [
                          Icon(Icons.clear_all_rounded),
                          SizedBox(width: 5),
                          Text("Clear all")
                        ],
                      ),
                    )
                  ]
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: CodeField(
                  wrap: true,
                  controller: controller,
                ),
              ),
              if(model.hasResults)
                Expanded(
                  child: SelectionArea(
                    child: DataTable2(
                      minWidth: 300,
                      showBottomBorder: true,
                      headingRowHeight: 40,
                      dataRowHeight: 30,
                      headingTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      headingRowColor: MaterialStateProperty.all(Colors.grey[300]),
                      columns: model.columns.map((e) => DataColumn(
                        label: Text(e)
                      )).toList(),
                      rows: List<DataRow>.generate(model.result.length, (index) {
                        var item = model.result.elementAt(index);
                        return DataRow(
                          cells: item.entries.map((e) => 
                            DataCell(Text(e.value.toString(), style: const TextStyle(fontSize: 12),))
                          ).toList() 
                        );
                      })
                    ),
                  )
                )
              else
                const Spacer(),

              Card(
                margin: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.zero, topLeft: Radius.zero)
                ),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                  child: DefaultTextStyle(
                    style: const TextStyle(fontSize: 12, color: Colors.black),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const VerticalDivider(thickness: 1),
                          if(model.hasResults)
                            Text(model.executionTime.inMilliseconds > 0 ? "Executiom time: ${model.executionTime.inMilliseconds} ms" : "Execution time: ${model.executionTime.inMicroseconds} μs")
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}