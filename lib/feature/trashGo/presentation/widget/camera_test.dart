import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

late List<CameraDescription> _cameras;

class CameraTest extends StatefulWidget {
  const CameraTest({super.key});

  @override
  State<CameraTest> createState() => _CameraTestState();
}

class _CameraTestState extends State<CameraTest> {
  late CameraController controller;

  @override
  void initState() async {
    super.initState();
    _cameras = await availableCameras();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.value.isInitialized
          ? CameraPreview(controller)
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
