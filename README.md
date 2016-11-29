# Clibwebsockets
A Swift system module for libwebsockets

This is a system module that allows Swift Package Manager projects to use `libwebsockets`.  To use this module, you must download & install libwebsockets from https://github.com/warmcat/libwebsockets.

Swift packages using this module must be built with:

    swift build -Xswiftc -lwebsockets -Xswiftc -I/usr/local/opt/openssl/include -Xswiftc -I/usr/local/include -Xswiftc -L/usr/local/lib -Xlinker -L/usr/local/lib -Xlinker -lwebsockets

instead of just `swift build`.
