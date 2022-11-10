import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:json_query_tool/providers/paste_json_provider.dart';
import 'package:stacked/stacked.dart';

class PasteJsonView extends HookWidget {
  const PasteJsonView({super.key});

  @override
  Widget build(BuildContext context) {
    var textController = useTextEditingController();
    var formKey = useRef(GlobalKey<FormState>());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Form(
              key: formKey.value,
              child: TextFormField(
                controller: textController,
                cursorWidth: 1,
                validator: (text) {
                  if(text == null || text.isEmpty) {
                    return "You must provider a JSON string or load it from a file";
                  } 
            
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Paste your JSON here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                maxLines: 20,
                minLines: 20,
              ),
            ),

            const SizedBox(height: 10),

            ViewModelBuilder.reactive(
              viewModelBuilder: () => PasteJsonProvider(),
              builder: (context, model, child) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    onPressed: model.busy(false) ? null : () async {
                      var result = await FilePicker.platform.pickFiles(
                        allowCompression: false,
                        allowMultiple: false,
                        type: FileType.custom,
                        dialogTitle: "Select a valid json file",
                        lockParentWindow: true,
                        allowedExtensions: ["json"],
                        withReadStream: true
                      );

                      if(result != null) {
                        var stream = result.files.first.readStream;
                        model.pasteJson(stream, isFile: true);
                      }

                    },
                    child:  model.busy(true) ? const SizedBox(
                      height: 20, 
                      width: 20, 
                      child: CircularProgressIndicator(
                        color: Colors.indigo, strokeWidth: 3)
                      ) : const Text("Load from file"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: model.busy(true) ? null : () async {
                      if(formKey.value.currentState!.validate()) {
                        String json = textController.text;
                        if(!await model.pasteJson(json)) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text("Failed to decode JSON"),
                            backgroundColor: Color(0xFFE53935),
                          ));
                        } else {

                        }
                      }
                    },
                    child: model.busy(false) ? const SizedBox(
                      height: 20, 
                      width: 20, 
                      child: CircularProgressIndicator(
                        color: Colors.white, strokeWidth: 3)
                      ) : const Text("Parse"),
                  )
                ],
              ),
            ),

            const Spacer(),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}