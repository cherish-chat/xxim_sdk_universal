import 'dart:ffi';
import 'dart:io';
import 'package:xxim_sdk/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

XximSdk createWrapperImpl(ExternalLibrary dylib) => XximSdkImpl(dylib);

DynamicLibrary createLibraryImpl() {
  const base = 'xxim_sdk';

  if (Platform.isIOS || Platform.isMacOS) {
    // return DynamicLibrary.open('lib$base.dylib');
    return DynamicLibrary.executable();
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('$base.dll');
  } else {
    return DynamicLibrary.open('lib$base.so');
  }
}
