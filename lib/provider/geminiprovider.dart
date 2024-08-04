import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:mind_mate/services/geminiservice.dart';



class GeminiProvider extends ChangeNotifier {
  static GenerativeModel _initModel() {
    String key = "AIzaSyDFAURrF9NUlT7NWQUqrtys-_iVy2cO6w4";
    if (key.isEmpty) {
      throw Exception('api key not found');
    }
    return GenerativeModel(model: 'gemini-pro', apiKey: key);
  }

  static final _geminiService = GeminiService(model: _initModel());

  String? response;
  bool isLoading = false;

  Future<void> generateContentFromText({
    required String prompt,
  }) async {
    isLoading = true;
    notifyListeners();
    response = null;
    response = await _geminiService.generateContentFromText(prompt: prompt);
    isLoading = false;
    notifyListeners();
  }

  void reset() {
    response = null;
    isLoading = false;
    notifyListeners();
  }
}
