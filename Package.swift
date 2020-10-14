// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Clibwebsockets",
    products: [.library(name: "Clibwebsockets", targets: ["Clibwebsockets"])],
    dependencies: [
        .package(url: "git://github.com/NobodyNada/COpenSSL", from: "0.1.0"),
        .package(url: "git://github.com/NobodyNada/Clibuv", from: "0.0.0"),
        .package(url: "git://github.com/NobodyNada/Clibevent", from: "0.0.0")
    ],
    targets: [
        .systemLibrary(
            name: "Clibwebsockets",
            path: "/usr/local/opt/qeexo/libwebsocket",
            pkgConfig: "libwebsockets",
            providers: [.brew(["libwebsockets"]), .apt(["libwebsockets-dev"])]
        )
    ]
)
