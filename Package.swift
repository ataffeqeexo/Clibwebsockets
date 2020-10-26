// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Clibwebsockets",
    products: [.library(name: "Clibwebsockets", targets: ["Clibwebsockets"])],
    dependencies: [
        .package(url: "https://github.com/ataffeqeexo/COpenSSL.git", from: "0.3.0"),
        .package(url: "https://github.com/ataffeqeexo/Clibuv.git", from: "0.1.0"),
        .package(url: "https://github.com/ataffeqeexo/Clibevent.git", from: "0.1.0")
    ],
    targets: [
        .systemLibrary(
            name: "Clibwebsockets",
            pkgConfig: "libwebsockets"
        )
    ]
)
