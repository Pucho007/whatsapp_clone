import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class TakePictureScreen extends StatefulWidget{

  List<CameraDescription> cameras;

  TakePictureScreen(this.cameras);
  @override
  _TakePictureScreenState createState()=>_TakePictureScreenState();
}

class _TakePictureScreenState extends State<TakePictureScreen>{

  CameraController _cameraController;
  @override
  void initState() {
    super.initState();
    _cameraController=CameraController(widget.cameras[0],ResolutionPreset.medium);
    _cameraController.initialize().then((_){
      if(!mounted){
        return;
      }
      setState(() {

      });
    });
  }

  @override

  void dispose(){
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(!_cameraController.value.isInitialized){
      return Container();
    }
    return AspectRatio(
      aspectRatio: _cameraController.value.aspectRatio,
      child: CameraPreview(_cameraController),
    );
  }
}

