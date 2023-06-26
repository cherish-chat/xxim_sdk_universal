import 'package:xxim_sdk/src/bridge_generated.dart';

/// Represents the external library for xxim_sdk
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

XximSdk createWrapperImpl(ExternalLibrary lib) => throw UnimplementedError();

Object createLibraryImpl() => throw UnimplementedError();
