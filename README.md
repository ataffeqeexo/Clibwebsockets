# Clibwebsockets
A Swift system module for libwebsockets

This is a system module that allows Swift Package Manager projects to use `libwebsockets`.  To use this module, you must download & install libwebsockets from https://github.com/warmcat/libwebsockets.

## macOS and Linux
The following packages must be present and marked as dependencies to allow Xcode and Swift Package manager to compile:
```
.package(url: "https://github.com/NobodyNada/Clibwebsockets.git", from: "1.3.0"),
.package(url: "https://github.com/NobodyNada/COpenSSL.git", from: "0.1.0"),
.package(url: "https://github.com/NobodyNada/Clibuv.git", from: "0.0.0"),
.package(url: "https://github.com/NobodyNada/Clibevent.git", from: "0.0.0")
```

Alternatively, the following arguments can be used in place of the `COpenSSL`, `Clibuv`, and `Clibevent` dependencies (will only work from the command line, not Xcode):

    swift build -Xswiftc -lwebsockets -Xswiftc -I/usr/local/opt/openssl/include -Xswiftc -I/usr/local/include -Xswiftc -L/usr/local/lib -Xlinker -L/usr/local/lib -Xlinker -lwebsockets

Please note that `swift build` will not work without `COpenSSL`, `Clibuv`, and `Clibevent` dependencies or the arguments above.

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
