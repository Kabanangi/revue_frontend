import "package:file_picker/file_picker.dart";
import "package:flutter/material.dart";

class PublishComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Enregistrer une revue",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                focusColor: Colors.blue,
                hintText: "Entrer le titre",
                border: OutlineInputBorder(),
                icon: Icon(Icons.edit)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            minLines: 1,
            maxLines: 10,
            decoration: InputDecoration(
                focusColor: Colors.blue,
                hintText: "Entrer la synthèse",
                border: OutlineInputBorder(),
                icon: Icon(Icons.message)),
          ),
          SizedBox(
            height: 20,
          ),
          FilePickerWidget(),
          ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.send),
                  SizedBox(
                    width: 20,
                  ),
                  Text("envoyer"),
                ],
              ))
        ],
      ),
    );
  }
}

class FilePickerWidget extends StatefulWidget {
  @override
  _FilePickerWidgetState createState() => _FilePickerWidgetState();
}

class _FilePickerWidgetState extends State<FilePickerWidget> {
  String? _filePath;

  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _filePath = result.files.single.path;
      });
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _pickFile,
          child: Text('Pick File'),
        ),
        //SizedBox(height: 20),
        //Text(_filePath != null ? 'Picked file: $_filePath' : 'No file picked'),
      ],
    );
  }
}
