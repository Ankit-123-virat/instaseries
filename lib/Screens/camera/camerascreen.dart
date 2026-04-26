import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camerascreen extends StatefulWidget {
  const Camerascreen({super.key});

  @override
  State<Camerascreen> createState() => _CamerascreenState();
}

class _CamerascreenState extends State<Camerascreen> {

  File? _image;
final _picker = ImagePicker();
  pickImage()async{
final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

if (pickedFile != null){
  _image = File(pickedFile.path);
  setState(() {
    pickImage();

  });
}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Image Picker in Flutter "),
        
      ),
      body: Center(
        child: _image == null ? const Text("No Image Picked")
        : Image.file(_image!),

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){


      },
      child: const Icon(Icons.camera_alt),),

    );
  }
}

