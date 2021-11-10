import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAssetBundle extends CachingAssetBundle {
  Future<ByteData?>? _loadAsset(String key) async {
    final Uint8List encoded =
        utf8.encoder.convert(Uri(path: Uri.encodeFull(key)).path);
    var byteData = await ServicesBinding.instance!.defaultBinaryMessenger.send(
      'flutter/assets',
      encoded.buffer.asByteData(),
    );
    return byteData;
  }

  @override
  Future<ByteData> load(String key) async {
    ByteData? asset = await _loadAsset(key);
    if (asset != null) {
      return asset;
    }

    asset = await _loadAsset('packages/designfitness/$key');
    if (asset != null) {
      return asset;
    }

    throw FlutterError('Unable to load asset: $key');
  }
}
