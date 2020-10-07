# Clibwebsockets
A Swift system module for libwebsockets

This is a system module that allows Swift Package Manager projects to use `libwebsockets`.  To use this module, you must download & install libwebsockets from https://github.com/warmcat/libwebsockets.

## macOS and Linux
Swift packages using this module must be built with:

    swift build -Xswiftc -lwebsockets -Xswiftc -I/usr/local/opt/openssl/include -Xswiftc -I/usr/local/include -Xswiftc -L/usr/local/lib -Xlinker -L/usr/local/lib -Xlinker -lwebsockets

instead of just `swift build`.

## Windows
Swift must be installed according to the [Swift Getting Started](https://swift.org/getting-started/). To build libwebsockets, vcpkg is recommended. For example:
```
mkdir C:\SourceCache
git clone https://github.com/microsoft/vcpkg.git
cd vcpkg
bootstrap-vcpkg.bash
vcpkg.exe integrate install
vcpkg.exe install libwebsockets
```
To compile your Swift project, `swift build` is not enough. The libraries must be linked against:
```
swift build -Xswiftc -lwebsockets -Xswiftc -I"C:\SourceCache\vcpkg\packages\openssl-windows_x64-windows\include" -Xswiftc -I"C:\SourceCache\vcpkg\packages\libuv_x64-windows\include" -Xswiftc -I"C:\SourceCache\vcpkg\packages\libwebsockets_x64-windows\include" -Xswiftc -L"C:\SourceCache\vcpkg\packages\libwebsockets_x64-windows\lib" -Xlinker -lwebsockets -Xlinker /INCREMENTAL:NO -v
```
This command assumes that you used vcpkg and that libwebsockets is present at `C:\SourceCache`. Please note that `error: Error Domain=NSCocoaErrorDomain Code=256 "(null)"` due to a bug in Swift, but the compile will complete properly.
