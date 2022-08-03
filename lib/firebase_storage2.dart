import 'dart:async' show Future;
import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

import 'Data/initmock_data.dart';


//upload file into Firebase Storage

class FirebaseStorageScreen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirebaseStorageScreen2State();
  }
}

class _FirebaseStorageScreen2State extends State<FirebaseStorageScreen2> {
  late String fileName;
  File? file;
  UploadTask? uploadTask;

  @override
  Widget build(BuildContext context) {
    fileName = file != null ? basename(file!.path) : 'No File Selected';

    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Storage Screen 2"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Dang tim file!");
                selectFile();
              },
              child: Text('Select File'),
            ),
            Text(fileName),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                print('Dang Upload file');
                uploadFile();
              },
              child: Text('Upload File'),
            ),
            builProgress(),
          ],
        ),
      ),
    );
  }

  Widget builProgress() => StreamBuilder<TaskSnapshot>(
    stream: uploadTask?.snapshotEvents,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        final data = snapshot.data;

        // double progress = (data?.bytesTransferred.toDouble() ?? 0.5) / (data!.totalBytes.toDouble()  ?? 1);
        double progress = 0.3;

        return SizedBox(
          height: 50,
          child: Stack(
            fit: StackFit.expand,
            children: [
              LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey,
                color: Colors.green,
              ),
              Center(
                child: Text(
                  '${(100 * progress).roundToDouble()}%',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      } else {
        return SizedBox(
          height: 50,
        );
      }
    },
  );

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;
    final path = result.files.single.path!;

    setState(() => file = File(path));
  }

  Future uploadFile() async {
    if (file == null) {
      print("khong co file de upload");
      return;
    }

    final fileName = basename(file!.path);
    final destination = 'files/$fileName';
    String path = 'files/${fileName}';



    final ref = FirebaseStorage.instance.ref().child(path);

    setState(() {
      uploadTask = ref.putFile(file!);
    });


    final snapshot = await uploadTask!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();

    print('Download-Link: $urlDownload');

    setState(() {
      uploadTask=null;
    });

  }
}
