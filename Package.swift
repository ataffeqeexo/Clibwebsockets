// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Clibwebsockets",
    products: [.library(name: "Clibwebsockets", targets: ["Clibwebsockets"])],
    dependencies: [
        .package(url: "git://github.com/ataffeqeexo/COpenSSL", from: "0.1.0"),
        .package(url: "git://github.com/ataffeqeexo/Clibuv", from: "0.0.0"),
        .package(url: "git://github.com/ataffeqeexo/Clibevent", from: "0.0.0")
    ],
    targets: [
        .systemLibrary(
            name: "Clibwebsockets",
            pkgConfig: "libwebsockets"
        )
    ]
)
