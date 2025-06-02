import 'package:tflite/tflite.dart';

class ImageClassifier {
  Future<void> loadModel() async {
    await Tflite.loadModel(
      model: "assets/model.tflite",
      labels: "assets/labels.txt",
    );
  }

  Future<List?> classifyImage(String path) async {
    return await Tflite.runModelOnImage(
      path: path,
      numResults: 3,
      threshold: 0.5,
    );
  }

  Future<void> close() async {
    await Tflite.close();
  }
}
