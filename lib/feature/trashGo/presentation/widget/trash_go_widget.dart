import 'package:camera/camera.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushWidgetTrashGo extends StatefulWidget {
  static const String routeName = '/trash_go';
  const RecycleRushWidgetTrashGo({super.key});

  @override
  State<RecycleRushWidgetTrashGo> createState() =>
      _RecycleRushWidgetTrashGoState();
}

class _RecycleRushWidgetTrashGoState extends State<RecycleRushWidgetTrashGo> {
  late CameraController controller;
  late Future<void> _initCameraFuture;

  @override
  void initState() {
    super.initState();
    _initCameraFuture = initCamera();
  }

  Future<void> initCamera() async {
    var cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.max,
        enableAudio: false, imageFormatGroup: ImageFormatGroup.jpeg);
    await controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      print("Error: $e");
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

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: AppColor.textPrimary,
          child: const Icon(
            IconsaxBold.camera_slash,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: RecycleRushColor.gren400,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    IconsaxBold.location_slash,
                    size: 24,
                  ),
                  const SizedBox(width: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Please enable location for this app",
                        style: RecycleRushParagraph.small(),
                      ),
                      Text(
                        "Location Not Found :(",
                        style: RecycleRushHeadingTypography.small(),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                // width: double.infinity,
                // height: MediaQuery.of(context).size.height * 0.8,
                decoration: const BoxDecoration(
                  color: AppColor.textSecondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: FutureBuilder(
                      future: _initCameraFuture,
                      builder: (_, snapshot) {
                        return (snapshot.connectionState ==
                                ConnectionState.none)
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color:
                                      const Color(0xff000000).withOpacity(0.05),
                                ),
                                width: double.infinity,
                                child: CameraPreview(controller))
                            : Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color:
                                      const Color(0xff000000).withOpacity(0.05),
                                ),
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const NotPermittedComponent(),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0),
                                      onPressed: () {},
                                      child: Text(
                                        "Go to system settings",
                                        style: RecycleRushSubHeadingTypography
                                            .small(
                                          color: AppColor.textPrimary,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotPermittedComponent extends StatelessWidget {
  const NotPermittedComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(IconsaxBold.location_slash),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: 226,
          child: Text(
              "Please enable location service permission on system settings",
              textAlign: TextAlign.center,
              style: RecycleRushLabelTypography.small()),
        ),
      ],
    );
  }
}
