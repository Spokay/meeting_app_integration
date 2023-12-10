import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BackgroundTitle extends StatefulWidget {
  final String title;

  const BackgroundTitle({super.key, required this.title});

  @override
  State<BackgroundTitle> createState() => _BackgroundTitleState();
}

class _BackgroundTitleState extends State<BackgroundTitle> {
  ShaderMask? titleWithBackground;

  @override
  void initState() {
    super.initState();
    titleBackground().then((value) => titleWithBackground = value);
  }

  Future<ui.Image?> loadUiImage(String url) async {
    ui.Image image;
    ByteData data = await rootBundle.load(url);
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(data.buffer.asUint8List(), (ui.Image img) {
      return completer.complete(img);
    });
    image = await completer.future;
    return image;
  }

  Future<ShaderMask> titleBackground() async{
    ui.Image? image = await loadUiImage('assets/logo_bg.png');
    print(image);
    return ShaderMask(
        shaderCallback: (Rect bounds){
      final double widthFactor = bounds.width / image!.width;
      final double heightFactor = bounds.height / image.height;
      final Matrix4 matrix = Matrix4.identity()
        ..scale(widthFactor, heightFactor, 1.0);
      return ImageShader(
          image,
          TileMode.clamp,
          TileMode.clamp,
          matrix.storage
      );
    },
      child: Text(
        widget.title,
        style: const TextStyle(
          fontFamily: 'M PLUS Rounded 1c',
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),)
    );
  }

  @override
  Widget build(BuildContext context) {
    return titleWithBackground != null ? titleWithBackground! : const Text('');
  }
}
